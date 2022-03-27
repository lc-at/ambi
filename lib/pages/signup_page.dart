import 'dart:ui';

import 'package:asm_ambi/pages/signup_upload.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../model/user_registration.dart';
import '../theme/color.dart';
import '../theme/font.dart';
import 'package:drop_shadow/drop_shadow.dart';

class SignUp extends StatelessWidget {
  final newUser = Get.put(UserRegistration());
  // TextEditingController formInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // final dcx = Get.put(DestinoFormControllerX());
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
      child: Padding(
        padding: EdgeInsets.only(
          left: 35.0,
          right: 35.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Let’s get started !",
              style: Montserrat_Medium.copyWith(
                fontSize: 20,
                color: blackColor,
              ),
            ),
            SizedBox(height: 32),
            ClipRect(
              child: new BackdropFilter(
                filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        mainColor2.withOpacity(0.12),
                        mainColor2.withOpacity(0.05),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      // begin: Alignment.topCenter,
                      // end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    border: GradientBoxBorder(
                      gradient: LinearGradient(
                        colors: [
                          mainColor2.withOpacity(0.6),
                          mainColor2.withOpacity(0.2),
                        ],
                        begin: Alignment.center,
                        end: Alignment.bottomRight,
                      ),
                      width: 1.5,
                    ),
                  ),
                  child: TextField(
                    // controller: formInput.,
                    obscureText: false,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        // borderSide: BorderSide(
                        //     color: mainColor2.withOpacity(0.25),
                        //     width: 1.5),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        // borderSide: BorderSide(
                        //     color: mainColor2.withOpacity(0.25),
                        //     width: 1.5),
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'Name',
                      hintStyle: Roboto_Regular.copyWith(
                        color: whiteColor,
                        fontSize: 16,
                      ),
                    ),
                    style: Roboto_Regular.copyWith(
                      color: whiteColor,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 36),
            ClipRect(
              child: new BackdropFilter(
                filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        mainColor2.withOpacity(0.12),
                        mainColor2.withOpacity(0.05),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      // begin: Alignment.topCenter,
                      // end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    border: GradientBoxBorder(
                      gradient: LinearGradient(
                        colors: [
                          mainColor2.withOpacity(0.6),
                          mainColor2.withOpacity(0.2),
                        ],
                        begin: Alignment.center,
                        end: Alignment.bottomRight,
                      ),
                      width: 1.5,
                    ),
                  ),
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        // borderSide: BorderSide(
                        //     color: mainColor2.withOpacity(0.25),
                        //     width: 1.5),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        // borderSide: BorderSide(
                        //     color: mainColor2.withOpacity(0.25),
                        //     width: 1.5),
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'Username',
                      hintStyle: Roboto_Regular.copyWith(
                        color: whiteColor,
                        fontSize: 16,
                      ),
                    ),
                    style: Roboto_Regular.copyWith(
                      color: whiteColor,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 36),
            ClipRect(
              child: new BackdropFilter(
                filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        mainColor2.withOpacity(0.12),
                        mainColor2.withOpacity(0.05),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      // begin: Alignment.topCenter,
                      // end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    border: GradientBoxBorder(
                      gradient: LinearGradient(
                        colors: [
                          mainColor2.withOpacity(0.6),
                          mainColor2.withOpacity(0.2),
                        ],
                        begin: Alignment.center,
                        end: Alignment.bottomRight,
                      ),
                      width: 1.5,
                    ),
                  ),
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        // borderSide: BorderSide(
                        //     color: mainColor2.withOpacity(0.25),
                        //     width: 1.5),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        // borderSide: BorderSide(
                        //     color: mainColor2.withOpacity(0.25),
                        //     width: 1.5),
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'Email',
                      hintStyle: Roboto_Regular.copyWith(
                        color: whiteColor,
                        fontSize: 16,
                      ),
                    ),
                    style: Roboto_Regular.copyWith(
                      color: whiteColor,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 78),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              // Image.asset(
              //   'assets/images/icon_next.png',
              //   height: 50,
              // ),
              GestureDetector(
                onTap: () => Get.to(() => SignUpUpload()),
                child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: mainColor3,
                      // gradient: LinearGradient(
                      //   colors: [
                      //     mainColor2.withOpacity(0.6),
                      //     mainColor2.withOpacity(0.1),
                      //   ],
                      //   begin: Alignment.topLeft,
                      //   end: Alignment.bottomRight,
                      //   // begin: Alignment.topCenter,
                      //   // end: Alignment.bottomCenter,
                      // ),
                      borderRadius: BorderRadius.circular(50.0),
                      // border: GradientBoxBorder(
                      //   gradient: LinearGradient(
                      //     colors: [
                      //       mainColor2.withOpacity(0.6),
                      //       mainColor2.withOpacity(0.1),
                      //     ],
                      //     begin: Alignment.center,
                      //     end: Alignment.bottomRight,
                      //   ),
                      //   width: 1,
                      // ),
                    ),
                    child: Icon(Icons.arrow_forward, color: whiteColor)),
              )
            ]),
          ],
        ),
      ),
    ));
  }
}
