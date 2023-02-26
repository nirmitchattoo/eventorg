import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  const Display({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.black,
          title: RichText(
            text: const TextSpan(
                text: 'your',
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                children: [
                  TextSpan(
                    text: ' community',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),   
                ]),
          ),
      ),

      body: Column(children: [
        ElevatedButton(onPressed: (){

        }, child: Text('Stream'))
      ]),
    );
  }
}