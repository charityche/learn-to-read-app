import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Drag and Drop Example'),
        ),
        body: MyDraggableWidget(),
      ),
    );
  }
}

class MyDraggableWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DragTarget<String>(
        onWillAccept: (data) {
          // Define the logic to check if the dragged data is acceptable
          return data == 'F';
        },
        onAccept: (data) {
          // Define the logic to execute when the data is accepted
          print('Accepted: $data');
        },
        builder: (context, candidateData, rejectedData) {
          return Draggable<String>(
            data: 'F',
            feedback: Container(
              width: 65,
              height: 80,
              color: Colors.white,
              child: const Text(
                "F",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 45,
                  color: Color.fromARGB(255, 176, 94, 64),
                  fontWeight: FontWeight.bold,
                  height: 2.5,
                ),
              ),
            ),
            childWhenDragging: Container(
              width: 65,
              height: 80,
              color: Colors.white,
            ),
            child: Container(
              width: 65,
              height: 80,
              color: Colors.white,
              child: const Text(
                "Fat",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 45,
                  color: Color.fromARGB(255, 176, 94, 64),
                  fontWeight: FontWeight.bold,
                  height: 2.5,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
