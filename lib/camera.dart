import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';


class Camera extends StatefulWidget {
  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {

   File _image2;
   final imagePicker2 = ImagePicker();

   Future getImage() async{
     final image = await imagePicker2.getImage(source: ImageSource.camera);
     setState(() {
       _image2 = File(image.path);
     });
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _image2 == null ? Text("No Image Selected") : Image.file(_image2),),

      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        backgroundColor: Colors.blueAccent,
        child: Icon(Icons.camera),
      ),

    );
  }
}



