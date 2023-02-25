import 'package:flutter/material.dart';
import 'community_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(onPressed: (() {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> CommunityPage()));
      }), child: Text('Community Page')),
    );
  }
}