import 'package:eventorg/widgets/custom_button.dart';
import 'package:eventorg/widgets/custom_testfield.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  static String routeName = '/signup';
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  final TextEditingController _usernameController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sign Up',
        style: TextStyle(
           fontWeight: FontWeight.bold,
           fontSize: 20,
        ),
        ),

        ),
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: size.height * 0.1),     
                 const Text(
                  'Email', 
                   style: TextStyle(
                    fontWeight: FontWeight.bold,
                   )
                   ),
                  
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextField(controller: _emailController, obscureText: false,),
                  ),
                   
                  const SizedBox(
                    height:  20.0,
                    ),
                  const Text(
                  'Username', 
                   style: TextStyle(
                    fontWeight: FontWeight.bold,
                   )
                   ),
                  
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextField(controller: _usernameController, obscureText: false,),
                  ),
                    
                  const SizedBox(
                    height:  20.0,
                    ), 

                  const Text(
                  'Password', 
                   style: TextStyle(
                    fontWeight: FontWeight.bold,
                   )
                   ),
                  
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextField(controller: _emailController, obscureText: true,),
                  ),
                   
                  const SizedBox(
                    height:  20.0,
                    ), 

                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: CustomButton(
                    onTap: (){
                     
                   },
                   text: 'SignUp'
                   ),
                 ),     

              ]
              ,
            ),
          ),
      ),  
    );
  }
}