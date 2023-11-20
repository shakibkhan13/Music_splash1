import 'package:flutter/material.dart';
//import 'package:animated_splash_screen/animated_splash_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MusicApp'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color.fromARGB(255, 98, 41, 211), const Color.fromARGB(255, 181, 193, 202)], 
          ),
        ),
        child: YourActualContentWidget(), 
      ),
    );
  }
}

class YourActualContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'WelCome',
        style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 63, 19, 99)),
      ),
    );
  }
}