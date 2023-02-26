import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static String routeName =  '/login';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String emailEntered='';
  String passwordEntered='';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In')
        ),
      body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: size.height * 0.1),
              TextField(
                onChanged: (value){
                  emailEntered = value;
                },
                decoration: InputDecoration(
                  hintText: 'Email',
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.all(Radius.circular(15.0)),
                 ),
                ),
              ),
            ],
          ),
      ),  
    );
  }
}