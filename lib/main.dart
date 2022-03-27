import 'pages/start_menu_page.dart';
import 'package:asm_ambi/pages/signup_password.dart';
import 'package:asm_ambi/pages/signup_verification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/signup_page.dart';
import 'pages/signup_upload.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: StartMenu(),
    );
  }
}
