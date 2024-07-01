import 'package:flutter/material.dart';
class SecondDragAndDropLetters extends StatefulWidget {
  @override
  _SecondDragAndDropLettersState createState() => _SecondDragAndDropLettersState();
}

class _SecondDragAndDropLettersState extends State<SecondDragAndDropLetters> {
  String acceptedData = '';

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
     Row(
      children: [
        Row(
          
          children: [
            Image.asset(
                            'assets/image1.PNG', // Replace with your local image path
                            width: 100,
                            height: 80,
                          ),
                          SizedBox(width: 10,),
            Draggable<String>(
              data: 'f',
              feedback: Text(
                "f",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  height: 2.0,
                ),
              ),
              child: Container(
                width: 50,
                height: 80,
                color: Colors.white,
                child: const Text(
                  "f",
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    height: 2.0,
                  ),
                ),
              ),
            ),
            Draggable<String>(
              data: 'a',
              feedback: Text(
                "a",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  height: 2.0,
                ),
              ),
              child: Container(
                width: 60,
                height: 80,
                color: Colors.white,
                child: const Text(
                  "a",
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    height: 2.0,
                  ),
                ),
              ),
            ),
            Draggable<String>(
              data: 't',
              feedback: Text(
                "t",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  height: 2.0,
                ),
              ),
              child: Container(
                width: 65,
                height: 80,
                color: Colors.white,
                child: const Text(
                  "t",
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    height: 2.0,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Center(
          child: DragTarget<String>(
            onWillAccept: (data) {
              return true; // Always accept any data
            },
            onAccept: (data) {
              setState(() {
                acceptedData += data;
              });
            },
            builder: (context, candidateData, rejectedData) {
              return Container(
                width: 65,
                height: 80,
                color: Colors.green,
                child: Center(
                  child: Text(
                    acceptedData,
                    style: const TextStyle(
                      fontSize: 50,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 2.0,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    ),
    
    ],
    );
  }
}
