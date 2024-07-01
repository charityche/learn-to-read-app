import 'package:flutter/material.dart';
import 'package:learn_to_read_app1/nextscreen.dart';
import 'package:learn_to_read_app1/secondscreen.dart';
import 'package:learn_to_read_app1/newdrag.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String acceptedData = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'The Phonemic Diagram',
          style: TextStyle(
            fontSize: 26,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            height: 4.0,
            fontFamily: 'Marhey',
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 36, 86, 193),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              color: Colors.white,
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NextScreen()),
                      ); // Navigate back to the previous page
              },
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 40,
              width: double.infinity,
              color: const Color.fromARGB(255, 213, 216, 225),
              child: const Text(
                "Picture Con Vow Con  Words",
                style: TextStyle(
                  fontSize: 27,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                  wordSpacing: .0,
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          color: Colors.white,
                          child: DragAndDropLetters(),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondScreen()),
                      );
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0), // Set to 0 for a box shape
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 36, 86, 193)),
                      fixedSize: MaterialStateProperty.all<Size>(const Size(400, 40)),
                    ),
                    child: const Text(
                      'Next',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                        letterSpacing: 5.5,
                        height: 1.3,
                        fontFamily: 'Marhey',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
