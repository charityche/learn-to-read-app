
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
             Container(
              width: 400,
              height: 100,
              color: const Color.fromARGB(255, 36, 86, 193),
              child: const Text(
                "Activity: 1."
                " Look at the pictures and blend the sounds in the phonemic diagram."
                "2. Complete the phonemic diagram by writing or tracing the words on the last column.",
                style: TextStyle(fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.bold, height: 5.0,
                fontFamily: 'ArchivoBlack',
                ),
              
                         ),
                       
                         ),
             Container(
              height: 60,
              width: 400,
              color: const Color.fromARGB(255, 213, 216, 225),
              child: const Text(
                "Picture Con Vow Con Words",
                style: TextStyle(fontSize: 27,
                color: Colors.black,
                fontWeight: FontWeight.bold, height: 3.0, wordSpacing: 10.0
                ),
              
                         ),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/cup.PNG', // Replace with your local image path
                            width: 100,
                            height: 100,
                          ),
                        ],
                      ),
                    ),
                  
                         Container(
              width: 65,
              height: 100,
              color: Colors.white,
              child: const Text(
                textAlign: TextAlign.center,
                "p",
                style: TextStyle(fontSize: 50,
                color: Colors.black,
                fontWeight: FontWeight.bold, height: 2.5
                ),
              
                         ),
                         ),
                                 Container(
              width: 65,
              height: 100,
              color: Colors.white,
              child: const Text(
                textAlign: TextAlign.center,
                "u",
                style: TextStyle(fontSize: 50,
                color: Colors.red,
                fontWeight: FontWeight.bold, height: 2.5
                ),
              
                         ),
                         ),
                                 Container(
              width: 65,
              height: 100,
              color: Colors.white,
              child: const Text(
                textAlign: TextAlign.center,
                "c",
                style: TextStyle(fontSize: 50,
                color: Colors.black,
                fontWeight: FontWeight.bold, height: 2.5
                ),
              
                         ),
                         ),
                           Container(
              width: 65,
              height: 100,
              color: Colors.white,
              child: const Text(
                textAlign: TextAlign.center,
                "",
                style: TextStyle(fontSize: 45,
                color: Color.fromARGB(255, 176, 94, 64),
                fontWeight: FontWeight.bold, height: 3.0
                ),
              
                         ),
                         ),
                   ] )
                  ]))],
                )
              ])
      ),
       Container(
                alignment: Alignment.center,
               color: const Color.fromARGB(255, 213, 216, 225),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
          color: const Color.fromARGB(255, 213, 216, 225),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      color: const Color.fromARGB(255, 213, 216, 225),
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/bed.PNG', // Replace with your local image path
                            width: 100,
                            height: 100,
                          ),
                        ],
                      ),
                    ),
                  
                         Container(
              width: 65,
              height: 100,
              color: const Color.fromARGB(255, 213, 216, 225),
              child: const Text(
                textAlign: TextAlign.center,
                "d",
                style: TextStyle(fontSize: 50,
                color: Colors.black,
                fontWeight: FontWeight.bold, height: 2.5
                ),
              
                         ),
                         ),
                                 Container(
              width: 65,
              height: 100,
              color: const Color.fromARGB(255, 213, 216, 225),
              child: const Text(
                textAlign: TextAlign.center,
                "e",
                style: TextStyle(fontSize: 50,
                color: Colors.red,
                fontWeight: FontWeight.bold, height: 2.5
                ),
              
                         ),
                         ),
                                 Container(
              width: 65,
              height: 100,
              color: const Color.fromARGB(255, 213, 216, 225),
              child: const Text(
                textAlign: TextAlign.center,
                "b",
                style: TextStyle(fontSize: 50,
                color: Colors.black,
                fontWeight: FontWeight.bold, height: 2.5
                ),
              
                         ),
                         ),
                           Container(
              width: 65,
              height: 100,
             color: const Color.fromARGB(255, 213, 216, 225),
              child: const Text(
                textAlign: TextAlign.center,
                "",
                style: TextStyle(fontSize: 35,
                color: Color.fromARGB(255, 176, 94, 64),
                fontWeight: FontWeight.bold, height: 3.5
                ),
              
                         ),
                         ),
                   ] )
                  ]))],
                )
              ])
      ),
       Container(
                alignment: Alignment.center,
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/dig.PNG', // Replace with your local image path
                            width: 100,
                            height: 100,
                          ),
                        ],
                      ),
                    ),
                  
                         Container(
              width: 65,
              height: 100,
              color: Colors.white,
              child: const Text(
                textAlign: TextAlign.center,
                "g",
                style: TextStyle(fontSize: 50,
                color: Colors.black,
                fontWeight: FontWeight.bold, height: 2.5
                ),
              
                         ),
                         ),
                                 Container(
              width: 65,
              height: 100,
              color: Colors.white,
              child: const Text(
                textAlign: TextAlign.center,
                "i",
                style: TextStyle(fontSize: 50,
                color: Colors.red,
                fontWeight: FontWeight.bold, height: 2.5
                ),
              
                         ),
                         ),
                                 Container(
              width: 65,
              height: 100,
              color: Colors.white,
              child: const Text(
                textAlign: TextAlign.center,
                "d",
                style: TextStyle(fontSize: 50,
                color: Colors.black,
                fontWeight: FontWeight.bold, height: 2.5
                ),
              
                         ),
                         ),
                           Container(
              width: 65,
              height: 100,
              color: Colors.white,
              child: const Text(
                textAlign: TextAlign.center,
                "",
                style: TextStyle(fontSize: 40,
                color: Color.fromARGB(255, 176, 94, 64),
                fontWeight: FontWeight.bold, height: 3.0
                ),
              
                         ),
                         ),
                   ] )
                  ]))],
                )
              ])
      ),
       Container(
                alignment: Alignment.center,
               color: const Color.fromARGB(255, 213, 216, 225),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            color: const Color.fromARGB(255, 213, 216, 225),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      color: const Color.fromARGB(255, 213, 216, 225),
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/toy.PNG', // Replace with your local image path
                            width: 100,
                            height: 100,
                          ),
                        ],
                      ),
                    ),
                  
                         Container(
              width: 65,
              height: 100,
              color: const Color.fromARGB(255, 213, 216, 225),
              child: const Text(
                textAlign: TextAlign.center,
                "y",
                style: TextStyle(fontSize: 50,
                color: Colors.black,
                fontWeight: FontWeight.bold, height: 2.5
                ),
              
                         ),
                         ),
                                 Container(
              width: 65,
              height: 100,
             color: const Color.fromARGB(255, 213, 216, 225),
              child: const Text(
                textAlign: TextAlign.center,
                "o",
                style: TextStyle(fontSize: 50,
                color: Colors.red,
                fontWeight: FontWeight.bold, height: 2.5
                ),
              
                         ),
                         ),
                                 Container(
              width: 65,
              height: 100,
             color: const Color.fromARGB(255, 213, 216, 225),
              child: const Text(
                textAlign: TextAlign.center,
                "t",
                style: TextStyle(fontSize: 50,
                color: Colors.black,
                fontWeight: FontWeight.bold, height: 2.5
                ),
              
                         ),
                         ),
                           Container(
              width: 80,
              height: 100,
              color: const Color.fromARGB(255, 213, 216, 225),
              child: const Text(
                textAlign: TextAlign.center,
                "",
                style: TextStyle(fontSize: 40,
                color: Color.fromARGB(255, 176, 94, 64),
                fontWeight: FontWeight.bold, height: 3.0
                ),
              
                         ),
                         ),
                   ] )
                  ]))],
                )
              ])
      ),
       Container(
                alignment: Alignment.center,
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/bush.PNG', // Replace with your local image path
                            width: 100,
                            height: 100,
                          ),
                        ],
                      ),
                    ),
                  
                         Container(
              width: 65,
              height: 100,
              color: Colors.white,
              child: const Text(
                textAlign: TextAlign.center,
                "sh",
                style: TextStyle(fontSize: 50,
                color: Colors.black,
                fontWeight: FontWeight.bold, height: 2.5
                ),
              
                         ),
                         ),
                                 Container(
              width: 65,
              height: 100,
              color: Colors.white,
              child: const Text(
                textAlign: TextAlign.center,
                "u",
                style: TextStyle(fontSize: 50,
                color: Colors.red,
                fontWeight: FontWeight.bold, height: 2.5
                ),
              
                         ),
                         ),
                                 Container(
              width: 65,
              height: 100,
              color: Colors.white,
              child: const Text(
                textAlign: TextAlign.center,
                "b",
                style: TextStyle(fontSize: 50,
                color: Colors.black,
                fontWeight: FontWeight.bold, height: 2.5
                ),
              
                         ),
                         ),
                           Container(
              width: 80,
              height: 100,
              color: Colors.white,
              child: const Text(
                textAlign: TextAlign.center,
                "",
                style: TextStyle(fontSize: 30,
                color: Color.fromARGB(255, 176, 94, 64),
                fontWeight: FontWeight.bold, height: 5.0
                ),
              
                         ),
                         ),
                   ] )
                  ]))],
                )
              ])
      ),
    
          Container(
            alignment: Alignment.center,
            color: const Color.fromARGB(255, 213, 216, 225),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                     color: const Color.fromARGB(255, 213, 216, 225),
                      child: Column(
                        children: <Widget>[
                         GestureDetector(child: Image.asset(
                            'assets/bat.PNG', // Replace with your local image path
                            width: 100,
                            height: 100,
                          ),
                                onTap: () async {
                              final player = AudioPlayer();
                              await player.play(AssetSource('A.mp3'));
                          }
                         )
                         
                        ],
                      ),
                    ),
                  
                         Container(
              width: 65,
              height: 100,
              color: const Color.fromARGB(255, 213, 216, 225),
              child: const Text(
                textAlign: TextAlign.center,
                "t",
                style: TextStyle(fontSize: 50,
                color: Colors.black,
                fontWeight: FontWeight.bold, height: 2.5
                ),
              
                         ),
                         ),
                                 Container(
              width: 65,
              height: 100,
              color: const Color.fromARGB(255, 213, 216, 225),
              child: const Text(
                textAlign: TextAlign.center,
                "a",
                style: TextStyle(fontSize: 50,
                color: Colors.red,
                fontWeight: FontWeight.bold, height: 2.5
                ),
              
                         ),
                         ),
                                 Container(
              width: 65,
              height: 100,
              color: const Color.fromARGB(255, 213, 216, 225),
              child: const Text(
                textAlign: TextAlign.center,
                "b",
                style: TextStyle(fontSize: 50,
                color: Colors.black,
                fontWeight: FontWeight.bold, height: 2.5
                ),
              
                         ),
                         ),
                           Container(
              width: 80,
              height: 100,
              color: const Color.fromARGB(255, 213, 216, 225),
              child: const Text(
                textAlign: TextAlign.center,
                "",
                style: TextStyle(fontSize: 45,
                color: Color.fromARGB(255, 176, 94, 64),
                fontWeight: FontWeight.bold, height: 3.0
                ),
              
                         ),
                         ),
                   ] )
                  ]))],
                )
              );
      
            
            
        
      
      
    
      
    
  }
}