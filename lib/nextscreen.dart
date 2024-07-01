import 'package:flutter/material.dart';
import 'package:learn_to_read_app1/firstscreen.dart';
import 'package:learn_to_read_app1/homescreen.dart';
import 'package:learn_to_read_app1/secondscreen.dart';
import 'package:learn_to_read_app1/thirdscreen.dart';

class NextScreen extends StatelessWidget {
  final List<String> containerTexts = ['Week1', 'Week2', 'Week3', 'Week4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pick A Week Go!!',
          style: TextStyle(
            fontSize: 30,
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
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      ); 
              },
            );
          },
        ),
      ),
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/background2.PNG', // Replace with the actual path to your image
              fit: BoxFit.cover,
            ),
          ),
          
          // Main Content
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0, // Set to 200 or higher
                  ),
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        // Navigate to the corresponding screen based on the tapped container
                        switch (index) {
                          case 0:
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => FirstScreen()),
                            );
                            break;
                          case 1:
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  SecondScreen()),
                            );
                            break;
                          case 2:
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const ThirdScreen()),
                            );
                            break;
                          case 3:
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SecondScreen()),
                            );
                            break;
                        }
                      },
                      child: Container(
                        height: 200, // Set the height of the container
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 36, 86, 193),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/${['1', '2', '3', '4'][index]}.PNG',
                              width: 157,
                              height: 100, // Adjusted image height
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 10), // Added space between image and text
                            Text(
                              containerTexts[index],
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Marhey',
                                fontSize: 30.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
