import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Image_pic extends StatefulWidget {
  const Image_pic({Key? key}) : super(key: key);

  @override
  _Image_picState createState() => _Image_picState();
}

class _Image_picState extends State<Image_pic> {
  dynamic file;

  Future<void> openCamera() async {
    var picker = ImagePicker();
    var photo = await picker.pickImage(source: ImageSource.camera);
    file = File(photo!.path);
    print(file);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),
      ),
      body: Center(
        child: file == null ? Text('Select Image') : Image.file(file),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('yeet');
          openCamera();
        },
        child: Icon(Icons.camera),
      ),
    );
  }
}
