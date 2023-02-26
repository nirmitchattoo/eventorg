import 'package:eventorg/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  bool obscureText;
  CustomTextField({super.key, required this.controller, required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      controller: controller,
      decoration: const InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: buttonColor,
            width: 2
          )
        ),
        enabledBorder:  OutlineInputBorder(
          borderSide: BorderSide(            
            color: secondaryBackgroundColor,
            width: 2
          ),
          
          ),
      )
    ); 
    }
}