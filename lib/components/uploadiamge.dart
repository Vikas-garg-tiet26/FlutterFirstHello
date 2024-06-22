import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImageUploadScreen extends StatefulWidget {
  @override
  _ImageUploadScreenState createState() => _ImageUploadScreenState();
}

class _ImageUploadScreenState extends State<ImageUploadScreen> {
  File? _pickedImage;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _pickedImage = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _pickedImage != null
            ? Image.file(
                _pickedImage!,
                width: 400,
                height: 200,
                fit: BoxFit.cover,
              )
            : Text(''),
        SizedBox(height: 20),
        Container(
          width: MediaQuery.of(context).size.width / 1.8,
          height: MediaQuery.of(context).size.height / 13,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40)
          ),
          child: FloatingActionButton(
             shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
            onPressed: _pickImage,
           
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text(
              'Upload',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(102, 176, 244, 1),),
            ),

            Icon(Icons.insert_photo_outlined , size: 30, color: Color.fromRGBO(102, 176, 244, 1),)
            ],) 
          ),
        )
      ],
    );
  }
}
