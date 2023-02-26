import 'package:eventorg/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final double bagroundHeight = 200;
  final double profileHeight = 80;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: [
            buildStack(),
            buildContext(),
          ],
      ),
    );
  }

  Stack buildStack() {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: profileHeight/2),
          width: double.infinity,
          height: 200,
          color: Colors.grey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('My Profile',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            //  SizedBox(width: 80,),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.share),

              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_vert),),
            ],
          ),
        ),
        Positioned(
          top: bagroundHeight-profileHeight/2,
          child: CircleAvatar(
            radius: profileHeight/2,
          ),
        ),
      ],
    );
  }

Widget buildContext() {
    return Column(
      children: [
        SizedBox(height: 20,),
        Text('Name',style: TextStyle(fontWeight: FontWeight.bold),),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
            onPressed: (){},
            child: Text('Edit Profile',style: TextStyle(color: Colors.white),),
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildScialIcon(FontAwesomeIcons.linkedinIn,),
            SizedBox(
              width: 25,
            ),
            buildScialIcon(FontAwesomeIcons.github,),
            SizedBox(
              width: 25,
            ),
            buildScialIcon(FontAwesomeIcons.instagram,),
            SizedBox(
              width: 25,
            ),
            buildScialIcon(FontAwesomeIcons.twitter,),
          ],
        ),
      ],
    );
  }

Widget buildScialIcon(IconData icon) {
    return CircleAvatar(
      radius: 25,
      child: Icon(icon,size: 20,),
    );
}
}