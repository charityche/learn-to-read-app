import 'package:flutter/material.dart';

class DragAndDropLetters extends StatefulWidget {
  @override
  _DragAndDropLettersState createState() => _DragAndDropLettersState();
}

class _DragAndDropLettersState extends State<DragAndDropLetters> {
  final Map<int, String> words = {
    1: 'fat',
    2: 'bed',
    3: 'fish',
    4: 'pot',
    5: 'push',
    6: 'van',
  };

  Map<int, List<String>> acceptedData = {};

  @override
  void initState() {
    super.initState();
    // Initialize acceptedData with empty lists for each word
    words.keys.forEach((key) {
      acceptedData[key] = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: words.keys.map((key) {
        final word = words[key]!;
        final isWordCorrect = acceptedData[key]!.join() == word;
        return buildRowWithLettersAndImage(
          key,
          'assets/image$key.PNG',
          word,
          acceptedData[key]!,
          key.isEven
              ? Colors.white
              : const Color.fromARGB(255, 213, 216, 225),
          Colors.black,
          isWordCorrect,
        );
      }).toList(),
    );
  }

  Widget buildRowWithLettersAndImage(
      int row,
      String imagePath,
      String word,
      List<String> acceptedData,
      Color backgroundColor,
      Color textColor,
      bool isWordCorrect) {
    return Container(
      color: backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: 100,
            height: 100,
          ),
          SizedBox(width: 5.5),
          ...mergeLetters(word).asMap().entries.map((entry) {
            final int index = entry.key;
            final String letter = entry.value;
            final isMiddleLetter = letter ==
                mergeLetters(word)[mergeLetters(word).length ~/ 2];
            return Draggable<String>(
              data: letter,
              feedback: Text(
                letter,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  height: 2.0,
                  color: textColor,
                ),
              ),
              child: DragTarget<String>(
                onWillAccept: (data) =>
                    data == letter ||
                    (letter == 'sh' && data == 's'), // Accept only 'sh' or 's'
                builder: (context, candidateData, rejectedData) {
                  return Container(
                    width: getLetterWidth(letter, word), // Adjust width dynamically
                    height: 80,
                    color: backgroundColor,
                    child: Text(
                      letter,
                      style: TextStyle(
                        fontSize: 40,
                        color: isMiddleLetter ? Colors.red : textColor,
                        fontWeight: FontWeight.bold,
                        height: 2.0,
                      ),
                    ),
                  );
                },
              ),
            );
          }).toList(),
          SizedBox(width: 20),
          Expanded(
            child: Stack(
              children: [
                DragTarget<String>(
                  onWillAccept: (data) =>
                      (data == 'sh' && !acceptedData.contains('sh')) ||
                      (data != 'sh' && !acceptedData.contains(data)),
                  onAccept: (data) {
                    final droppedLetter = data.toString();
                    if (droppedLetter == 'sh') {
                      setState(() {
                        acceptedData.add(droppedLetter);
                      });
                    } else {
                      final correctLetter = word[acceptedData.length];
                      if (droppedLetter == correctLetter) {
                        setState(() {
                          acceptedData.add(data);
                        });
                      }
                    }
                  },
                  builder: (context, candidateData, rejectedData) {
                    return Container(
                      decoration: BoxDecoration(
                        color: backgroundColor,
                      ),
                      height: 80,
                      child: Center(
                        child: Text(
                          acceptedData.join(),
                          style: TextStyle(
                            fontSize: 40,
                            color: Color.fromARGB(255, 196, 94, 31),
                            fontWeight: FontWeight.bold,
                            height: 2.0,
                          ),
                        ),
                      ),
                    );
                  },
                ),
                if (isWordCorrect)
                  AnimatedOpacity(
                    opacity: isWordCorrect ? 1.0 : 0.0,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                    child: Icon(
                      Icons.check,
                      color: Colors.green,
                      size: 80,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<String> mergeLetters(String word) {
    List<String> merged = [];
    for (int i = 0; i < word.length; i++) {
      if (i < word.length - 1 &&
          (word[i] == 's' || word[i] == 'p') &&
          word[i + 1] == 'h') {
        merged.add('sh'); // Combine 'sh' into one letter
        i++; // Skip next letter since it's already added
      } else {
        merged.add(word[i]);
      }
    }
    return merged;
  }

  double getLetterWidth(String letter, String word) {
    if (letter == 'sh') {
      return 45; // Adjust width for 'sh' letter
    } else {
      return 50; // Default width for other letters
    }
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DragAndDropLetters(),
  ));
}
