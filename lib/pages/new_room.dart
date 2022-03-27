import 'dart:ui';

import 'package:asm_ambi/pages/home_page.dart';
import 'package:asm_ambi/pages/signup_upload.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../theme/color.dart';
import '../theme/font.dart';
import 'matching_page.dart';

class NewRoom extends StatelessWidget {
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
                    height: 48,
                  ),
                  Text(
                    "Create your custom room !",
                    style: Montserrat_Medium.copyWith(
                      fontSize: 20,
                      color: whiteColor,
                    ),
                  ),
                  SizedBox(height: 28),
                  Text(
                    "Room's Name",
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
                            hintText: 'e.g Linear Algebra Final Exam',
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
                  SizedBox(height: 23),
                  Text(
                    "Intention",
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
                            hintText: 'e.g Preparing for final exam',
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
                  SizedBox(height: 23),
                  Text(
                    "Tag's",
                    style: Roboto_Medium.copyWith(
                      fontSize: 14,
                      color: grayColor,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      ClipRect(
                        child: new BackdropFilter(
                          filter:
                              new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                          child: Container(
                            width: 120,
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
                                hintText: 'Linear Algebra',
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
                      SizedBox(
                        width: 4,
                      ),
                      Image.asset('assets/images/remove_tag.png', width: 17),
                      SizedBox(
                        width: 6,
                      ),
                      Image.asset('assets/images/add_tag.png', width: 17),
                    ],
                  ),
                  SizedBox(height: 23),
                  Text(
                    "Capacity",
                    style: Roboto_Medium.copyWith(
                      fontSize: 14,
                      color: grayColor,
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/uncheck_circle.png',
                              height: 15,
                            ),
                            SizedBox(width: 13),
                            Text(
                              '2',
                              style: Roboto_Regular.copyWith(
                                fontSize: 14,
                                color: grayColor,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/uncheck_circle.png',
                              height: 15,
                            ),
                            SizedBox(width: 13),
                            Text(
                              '3',
                              style: Roboto_Regular.copyWith(
                                fontSize: 14,
                                color: grayColor,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/check_circle.png',
                              height: 15,
                            ),
                            SizedBox(width: 13),
                            Text(
                              '4',
                              style: Roboto_Regular.copyWith(
                                fontSize: 14,
                                color: grayColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 78,
                  ),
                  Container(
                    height: 51,
                    width: 289,
                    child: ElevatedButton(
                      onPressed: () => Get.offAll(() => MatchingPage()),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        padding: EdgeInsets.all(0.0),
                      ),
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
                            "Create Room",
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
            SizedBox(height: 42),
          ],
        ),
      ),
    ));
  }
}
