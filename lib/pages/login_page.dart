import 'dart:ui';

import 'package:asm_ambi/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../theme/color.dart';
import '../theme/font.dart';

class LoginPage extends StatelessWidget {
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
              "Welcome back !",
              style: Montserrat_Medium.copyWith(
                fontSize: 20,
                color: whiteColor,
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
                          mainColor2.withOpacity(0.1),
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
                        color: grayColor,
                        fontSize: 16,
                      ),
                    ),
                    style: Roboto_Regular.copyWith(
                      color: grayColor,
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
                          mainColor2.withOpacity(0.1),
                        ],
                        begin: Alignment.center,
                        end: Alignment.bottomRight,
                      ),
                      width: 1.5,
                    ),
                  ),
                  child: TextField(
                    obscureText: true,
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
                      hintText: 'Password',
                      hintStyle: Roboto_Regular.copyWith(
                        color: grayColor,
                        fontSize: 16,
                      ),
                    ),
                    style: Roboto_Regular.copyWith(
                      color: grayColor,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 24),
            Text(
              'Forgot password',
              style: Roboto_Regular.copyWith(
                fontSize: 14,
                color: whiteColor,
              ),
            ),
            SizedBox(height: 27),
            Container(
              height: 51,
              width: 289,
              child: RaisedButton(
                onPressed: () => Get.offAll(() => HomePage()),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: BoxDecoration(
                      color: mainColor1,
                      // gradient: LinearGradient(
                      //   colors: [
                      //     mainColor1.withOpacity(0.5),
                      //     Color(0xffFF00E5).withOpacity(1),
                      //   ],
                      //   begin: AlignmentDirectional.topCenter,
                      //   end: Alignment(0, 0.75),
                      // ),
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Container(
                    constraints:
                        BoxConstraints(maxWidth: 289.0, maxHeight: 51.0),
                    alignment: Alignment.center,
                    child: Text(
                      "Log In",
                      textAlign: TextAlign.center,
                      style: Montserrat_SemiBold.copyWith(
                        color: blackColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
