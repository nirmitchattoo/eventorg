import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static String routeName =  '/login';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up')
        ),
      body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: size.height * 0.1),     
               const Text(
                'Email', 
                 style: TextStyle(
                  fontWeight: FontWeight.bold,

                 )
                 ),

                 
              
            ]
            ,
          ),
      ),  
    );
  }
}