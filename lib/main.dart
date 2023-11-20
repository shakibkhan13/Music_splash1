import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});
  
  static const colorizeColors = [
  Colors.purple,
  Colors.blue,
  Colors.yellow,
  Colors.red,
];

static const colorizeTextStyle = TextStyle(
  fontSize: 50.0,
  fontFamily: 'Horizon',
);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 95, 56, 173),
              Color.fromARGB(239, 24, 24, 97),
            ],
          ),
        ),
        child: AnimatedSplashScreen(
          splash: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const Text(
              //   'Relaxing Ears',
              //   style: TextStyle(
              //     fontSize: 50,
              //     fontWeight: FontWeight.bold,
              //     color: Colors.white,
              //   ),
              // ),
              AnimatedTextKit(
                  animatedTexts: [
                 ColorizeAnimatedText(
        'Relaxing Ears',
        textStyle: colorizeTextStyle.copyWith(fontWeight: FontWeight.bold),
        colors: colorizeColors,
      ),
    ],
    isRepeatingAnimation: true,
    onTap: () {
      print("Tap Event");
    },
  )
            ],
          ),
          nextScreen: HomeScreen(),
         backgroundColor: Color.fromARGB(0, 21, 90, 0),
          duration: 100000,
          splashTransition: SplashTransition.fadeTransition,
        ),
      ),
    );
  }
}


