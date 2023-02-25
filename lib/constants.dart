import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Imageprofile extends  StatefulWidget {
  Imageprofile({super.key});

  @override
  State<Imageprofile> createState() => _ImageprofileState();
}

class _ImageprofileState extends State<Imageprofile> {
  File? selectedImage;

  String base64Image = "";

  Future<void> chooseImage(type) async {
    // ignore: prefer_typing_uninitialized_variables
    var image;
    if (type == "camera") {
      image = await ImagePicker()
          .pickImage(source: ImageSource.camera, imageQuality: 10);
    } else {
      image = await ImagePicker()
          .pickImage(source: ImageSource.gallery, imageQuality: 25);
    }
    if (image != null) {
      setState(() {
        selectedImage = File(image.path);
        base64Image = base64Encode(selectedImage!.readAsBytesSync());
        // won't have any error now
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Stack(
          children: [
            if (selectedImage == null)
              const CircleAvatar(
                radius: 60,
                //backgroundColor: Colors.yellow,
                backgroundImage: AssetImage('assets/undraw_Coding_re_iv62.png'),
              )
            else
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.yellow,
                backgroundImage: FileImage(selectedImage!)
                //child: Image.file(selectedImage!),
              ),
            SizedBox(
              height: 4,
            ),
            Positioned(
              bottom: 10.0,
              right: 4.0,
              child: InkWell(
            onTap: (){
            showModalBottomSheet(context: context, builder: ((builder)=> BottomSheet()),);
            },
            child: Icon(
                  Icons.camera_alt,
                  color: Colors.black,
                  size: 28.0,
                ),
          ),
            )
          ],
        ),
      );
      
    }

Widget BottomSheet(){
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin:  const EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 20,

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
            text: const TextSpan(
                text: '    select',
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                children: [
                  TextSpan(
                    text: ' image',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ]),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ElevatedButton(
              //     onPressed: () async {
              //     chooseImage("camera");
              //     Navigator.of(context).pop();
              //     }, child: Text("Open Camera"),

              // ),
              SizedBox(width: 30,),
              Row(
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () async{
                        chooseImage("camera");
                        Navigator.of(context).pop();
                        },
                        child: CircleAvatar(
                          child: Icon(Icons.camera),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text('Camera')
                    ],
                  ),

                  SizedBox(width: 40),

                   Column(
                     children: [
                       GestureDetector(
                        onTap: () async{
                        chooseImage("gallery");
                        Navigator.of(context).pop();
                        },
                        child: CircleAvatar(
                          child: Icon(Icons.browse_gallery_sharp),
                        ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Gallery')
                     ],
                   ),

                ],
                ),
             ],
          )
        ],
      ),
    );

  }
}

// class ImagePickerScreen extends StatefulWidget {
//   const ImagePickerScreen({Key? key}) : super(key: key);

//   @override
//   State<ImagePickerScreen> createState() => _ImagePickerScreenState();
// }

// class _ImagePickerScreenState extends State<ImagePickerScreen> {
//   File? selectedImage;
//   String base64Image = "";

//   Future<void> chooseImage(type) async {
//     // ignore: prefer_typing_uninitialized_variables
//     var image;
//     if (type == "camera") {
//       image = await ImagePicker()
//           .pickImage(source: ImageSource.camera, imageQuality: 10);
//     } else {
//       image = await ImagePicker()
//           .pickImage(source: ImageSource.gallery, imageQuality: 25);
//     }
//     if (image != null) {
//       setState(() {
//         selectedImage = File(image.path);
//         base64Image = base64Encode(selectedImage!.readAsBytesSync());
//         // won't have any error now
//       });
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: [
//         Expanded(
//           child: Container(
//             width: 100,
//             height: 100,
//             child: selectedImage != null
//                 ? Image.file(
//               selectedImage!,
//               fit: BoxFit.cover,
//             )
//                 : Image.asset('images/default_image.png'),
//           ),

//     ),
//     Expanded(
//       child: Container(
//         height: 30,
//         child: Card(

//           color: Colors.red,
//           margin: EdgeInsets.zero,
//           child:InkWell(
//             onTap: (){
//             showModalBottomSheet(context: context, builder: ((builder)=> BottomSheet()),);
//             },
//             child: Text(
//              "Add Image",
//              textAlign: TextAlign.center,
//              style: TextStyle(
//                  fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),

//                     ),
//           ),
//         ),
//       ),
//     ),
//       ],
//     );
//   }
//   Widget BottomSheet(){
//     return Container(
//       height: 100,
//       width: MediaQuery.of(context).size.width,
//       margin:  const EdgeInsets.symmetric(
//         horizontal: 20,
//         vertical: 20,

//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Text('Select Image'),
//           SizedBox(height: 10,),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                   onPressed: () async {
//                   chooseImage("camera");
//                   Navigator.of(context).pop();
//                   }, child: Text("Open Camera"),

//               ),
//               SizedBox(width: 30,),
//               ElevatedButton(
//                   onPressed: () async {
//                     chooseImage("gallery");
//                     Navigator.of(context).pop();
//                   },
//                   child: Text("Open Gallery"))
//                      ],
//           )
//         ],
//       ),
//     );

//   }
// }
