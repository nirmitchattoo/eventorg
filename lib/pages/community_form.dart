import 'package:flutter/material.dart';
import 'package:eventorg/constants.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (() {
        
      }),
      child: Icon(Icons.thumb_up),
       ),
      //backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [],
        title: RichText(
          text: const TextSpan(
              text: 'new ',
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
              children: [
                TextSpan(
                  text: 'community',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ]),
        ),
      ),
      body: Column(children: [
        SizedBox(height: 8),
        Imageprofile(),
        SizedBox(height: 16),
        Padding(
          padding: EdgeInsets.all(15),
          child: TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.people),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              //labelText: 'Community Name',
              hintText: 'Community Name',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            
            decoration: InputDecoration(
              focusColor: Colors.black,
              hoverColor: Colors.black,
              icon: Icon(Icons.notes),
              labelText: 'Enter Description',
               border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            
            keyboardType: TextInputType.multiline,
            minLines: 1, // <-- SEE HERE
            maxLines: 10, // <-- SEE HERE
          ),
        )
      ]),
    );
  }
}
