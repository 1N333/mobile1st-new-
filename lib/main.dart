import 'package:flutter/material.dart';

import 'package:mobile1st/index.dart';
import 'package:mobile1st/screen/dashboard.dart';
import 'package:mobile1st/screen/dashboard.dart';
import 'package:mobile1st/screen/imagepic.dart';
import 'package:mobile1st/screen/location.dart';
import 'package:mobile1st/screen/register.dart';
import 'package:mobile1st/screen/video.dart';

import 'config/constant.dart';
import 'screen/login.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KMUTNB',
      theme: ThemeData(
        primaryColor: pColor,
        secondaryHeaderColor: sColor,
      ),
      routes: {
        'login': (context) => Login(),
        'register': (context) => Register(),
        'dashboard': (context) => Dashboard(),
        'video': (context) => Video(),
        'imagepic': (context) => Image_pic(),
        'location': (context) => Location(),
      },
      home: Index(),
    );
  }
}
