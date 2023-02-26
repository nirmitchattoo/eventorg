import 'package:eventorg/pages/home_page.dart';
import 'package:eventorg/pages/login_screen.dart';
import 'package:eventorg/pages/onboarding_screen.dart';
import 'package:eventorg/pages/signup_screen.dart';
import 'package:eventorg/pages/test.dart';
import 'package:eventorg/splash_screen.dart';
import 'package:eventorg/utils/colors.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',  
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        appBarTheme: AppBarTheme.of(context).copyWith(
          backgroundColor: Colors.black,
          titleTextStyle: const TextStyle(
            fontSize: 20,
          )
        )
      ),    
      home: Splash(),
      routes: {
        '/': (context) => Splash(),
        OnboardingScreen.routeName: (context) => OnboardingScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        SignupScreen.routeName:(context) => SignupScreen()
      },
    );
  }
}

