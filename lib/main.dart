import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', 
      theme: ThemeData(
        backgroundColor: Color.fromARGB(255, 11, 54, 90), 
        useMaterial3: true,
      ),
      home: AnimatedSplashScreen(
        splash: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Relaxing Ears',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        nextScreen:  HomeScreen(),
        backgroundColor: Colors.deepPurple,
        duration: 2000,
        splashTransition: SplashTransition.fadeTransition, 
      ),
    );
  }
}


