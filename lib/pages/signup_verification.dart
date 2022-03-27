// import 'dart:html';
import 'dart:ui';

import 'package:asm_ambi/pages/start_menu_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../theme/color.dart';
import '../theme/font.dart';

class SignUpVerification extends StatelessWidget {
  String email = 'useremail@mail.com';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.white,
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            bg1Color.withOpacity(1),
            bg2Color.withOpacity(1),
          ],
          begin: AlignmentDirectional.topCenter,
          end: AlignmentDirectional.bottomCenter,
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 25.0,
            right: 25.0,
            top: 24,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => Get.offAll(() => StartMenu()),
                child: Container(
                  height: 24,
                  width: 24,
                  color: Colors.transparent,
                  child: Center(
                    child: Icon(
                      Icons.arrow_back,
                      size: 24,
                      color: blackColor,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 100),
              Center(
                child: Column(
                  children: [
                    Text(
                      'Email Verification',
                      style: Montserrat_Medium.copyWith(
                        fontSize: 20,
                        color: blackColor,
                      ),
                    ),
                    SizedBox(height: 39),
                    Text(
                      'We will send email to\n$email in 48 hours\nafter reviewing your student ID',
                      style: Montserrat_Regular.copyWith(
                        fontSize: 14,
                        color: blackColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
