import 'dart:async';

import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 4),
          () =>
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const LoginScreen()),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: const Color(0xff1a1c2a),
        child: const Center(
          child:Text(
            "Splash Screen",
            style: TextStyle(fontSize: 35.0, fontFamily: 'Lato', color: Colors.white, ),
          ),
        ),
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: const Color(0xff1a1c2a), // Background color
        padding: const EdgeInsets.only(top: 150.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              padding: const EdgeInsets.only(left: 24.0),
              child: const Column(
                children: [

                  Text(
                    'Hey, Username',
                    style: TextStyle(fontSize: 35.0, fontFamily: 'Lato', color: Colors.white, ),
                    maxLines: 2,
                  ),


                ],
              ),
            ),
            const SizedBox(height: 150),

            Padding(
              padding: const EdgeInsets.symmetric (horizontal: 20),
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color:  const Color(0xfff57a7a),
                  borderRadius: BorderRadius.circular (20),
                ), // BoxDecoration
                child:  TextButton(
                  onPressed: () {},
                  child: const Text (
                    "Log in/Register",
                    style: TextStyle (fontSize: 18, color: Colors.white),
                  ), // Text
                ), // TextButton
              ), // Container
            ), // Padding
            const SizedBox (
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.symmetric (horizontal: 20),
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xffc29153),
                  borderRadius: BorderRadius.circular (20),
                ), // BoxDecoration
                child: TextButton(
                  onPressed: () {},
                  child: const Text (
                    "See Preview",
                    style: TextStyle (fontSize: 18, color: Colors.white),
                  ), // Text
                ), // TextButton
              ), // Container
            ), // Padding

          ],
        ),
      ),
    );
  }
}
