import 'dart:async';
import 'package:eventorg/pages/home_page.dart';
import 'package:eventorg/pages/onboarding_screen.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  static const String id = 'Splash_Screen';
  const Splash({super.key});
  
  @override
  State<Splash> createState() => _SplashState();
}
  
class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
  
    Timer(
      Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OnboardingScreen(),
        ),
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          RichText(
            text: const TextSpan(
                text: 'event',
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 50),
                children: [
                  TextSpan(
                    text: 'org',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 50),
                  ),
                ]),
          ),
        ],
        ),
      ),
    );
  }
}