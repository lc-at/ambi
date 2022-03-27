import 'dart:ui';

import 'package:asm_ambi/pages/signup_upload.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../theme/color.dart';
import '../theme/font.dart';

class ProfilePage extends StatelessWidget {
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
        bottom: false,
        right: false,
        left: false,
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: IconButton(
                    onPressed: () => Get.back(),
                    icon: Icon(
                      Icons.arrow_back,
                      size: 21,
                      color: whiteColor,
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 35.0,
                right: 35.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 44,
                  ),
                  Center(
                    child: Container(
                      height: 82,
                      width: 82,
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/images/profile/profile_icon.png',
                            height: 82,
                            width: 82,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Image.asset(
                                'assets/images/edit_profile_icon.png',
                                height: 26,
                                width: 26,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 44,
                  ),
                  Text(
                    "Profile",
                    style: Montserrat_Medium.copyWith(
                      fontSize: 18,
                      color: whiteColor,
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    "Name",
                    style: Roboto_Medium.copyWith(
                      fontSize: 14,
                      color: grayColor,
                    ),
                  ),
                  SizedBox(height: 8),
                  ClipRect(
                    child: new BackdropFilter(
                      filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                      child: Container(
                        // height: 49,
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
                                mainColor2.withOpacity(0.1),
                              ],
                              begin: Alignment.center,
                              end: Alignment.bottomRight,
                            ),
                            width: 1.5,
                          ),
                        ),
                        child: TextField(
                          controller:
                              TextEditingController(text: "Alexa Watson"),
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
                              color: grayColor,
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
                  SizedBox(height: 24),
                  Text(
                    "Username",
                    style: Roboto_Medium.copyWith(
                      fontSize: 14,
                      color: grayColor,
                    ),
                  ),
                  SizedBox(height: 8),
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
                                mainColor2.withOpacity(0.1),
                              ],
                              begin: Alignment.center,
                              end: Alignment.bottomRight,
                            ),
                            width: 1.5,
                          ),
                        ),
                        child: TextField(
                          controller:
                              TextEditingController(text: "@alexawatson"),
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
                              color: grayColor,
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
                  SizedBox(height: 24),
                  Text(
                    "Univesity/School",
                    style: Roboto_Medium.copyWith(
                      fontSize: 14,
                      color: grayColor,
                    ),
                  ),
                  SizedBox(height: 8),
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
                                mainColor2.withOpacity(0.1),
                              ],
                              begin: Alignment.center,
                              end: Alignment.bottomRight,
                            ),
                            width: 1.5,
                          ),
                        ),
                        child: TextField(
                          controller: TextEditingController(
                              text: "Universitas Indonesia"),
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
                            hintText: 'University/School',
                            hintStyle: Roboto_Regular.copyWith(
                              color: grayColor,
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
                  SizedBox(height: 24),
                  Text(
                    "Major",
                    style: Roboto_Medium.copyWith(
                      fontSize: 14,
                      color: grayColor,
                    ),
                  ),
                  SizedBox(height: 8),
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
                                mainColor2.withOpacity(0.1),
                              ],
                              begin: Alignment.center,
                              end: Alignment.bottomRight,
                            ),
                            width: 1.5,
                          ),
                        ),
                        child: TextField(
                          controller: TextEditingController(text: "Chemistry"),
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
                            hintText: 'Major',
                            hintStyle: Roboto_Regular.copyWith(
                              color: grayColor,
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
                ],
              ),
            ),
            SizedBox(height: 48),
          ],
        ),
      ),
    ));
  }
}
