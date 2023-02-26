import 'package:eventorg/pages/login_screen.dart';
import 'package:eventorg/pages/signup_screen.dart';
import 'package:eventorg/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  static const routeName = '/onboarding';
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
             'Welcome to\neventOrg',
             style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40
             ),
             textAlign: TextAlign.center  ,
            ),

            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(onTap: (){
                Navigator.pushNamed(context,LoginScreen.routeName);
              }, text: 'Log in'), 
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(onTap: (){
                Navigator.pushNamed(context, SignupScreen.routeName);
              }, text: 'Sign Up'),
            ),

          ],
        ),
      ),
    );
  }
}