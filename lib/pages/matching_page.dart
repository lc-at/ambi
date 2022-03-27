import 'dart:ui';

import 'package:asm_ambi/pages/home_page.dart';
import 'package:asm_ambi/pages/signup_upload.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../theme/color.dart';
import '../theme/font.dart';

class MatchingPage extends StatelessWidget {
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text(
                'Please wait ...',
                style: Montserrat_Medium.copyWith(
                  color: whiteColor,
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'We are matching\nyou with others',
                style: Montserrat_Regular.copyWith(
                  color: whiteColor,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Text(
            '01:27',
            style: Montserrat_Medium.copyWith(
              color: whiteColor,
              fontSize: 48,
            ),
          ),
          Column(
            children: [
              Container(
                height: 51,
                width: 150,
                child: ElevatedButton(
                  onPressed: () => Get.offAll(() => HomePage()),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    padding: EdgeInsets.all(0.0),
                  ),
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          mainColor2.withOpacity(0.6),
                          mainColor2.withOpacity(0.05),
                          // Colors.transparent,
                        ],
                        begin: AlignmentDirectional.topStart,
                        end: AlignmentDirectional.bottomEnd,
                        // begin: Alignment.topCenter,
                        // end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      border: GradientBoxBorder(
                        gradient: LinearGradient(
                          colors: [
                            mainColor2.withOpacity(0.5),
                            mainColor2.withOpacity(0.1),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Return Home",
                        textAlign: TextAlign.center,
                        style: Montserrat_SemiBold.copyWith(
                          color: whiteColor,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12),
              GestureDetector(
                child: Text(
                  'Cancel your room?',
                  style: Roboto_Regular.copyWith(
                    color: grayColor.withOpacity(0.5),
                    fontSize: 12,
                  ),
                ),
                onTap: () => showDialog(
                  context: context,
                  builder: (BuildContext context) => ClipRect(
                    child: AlertDialog(
                      backgroundColor: Colors.transparent,
                      content: ClipRect(
                        child: new BackdropFilter(
                          filter:
                              new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                          child: Container(
                            height: 120,
                            padding: EdgeInsets.only(
                              bottom: 8,
                              top: 18,
                              left: 8,
                              right: 8,
                            ),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  mainColor2.withOpacity(0.25),
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
                                    mainColor2.withOpacity(0.2),
                                    mainColor2.withOpacity(0.0),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                width: 1,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Are you sure to cancel\nyour room?',
                                      style: Montserrat_SemiBold.copyWith(
                                        fontSize: 16,
                                        color: whiteColor,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: mainColor1),
                                      onPressed: () => Get.back(),
                                      child: Text(
                                        'Cancel',
                                        style: Montserrat_Regular.copyWith(
                                            color: whiteColor),
                                      ),
                                    ),
                                    TextButton(
                                      style: TextButton.styleFrom(
                                        primary: grayColor.withOpacity(0.5),
                                        side: BorderSide(
                                          width: 1,
                                          color: grayColor.withOpacity(0.5),
                                        ),
                                      ),
                                      onPressed: () =>
                                          Get.offAll(() => HomePage()),
                                      child: Text(
                                        'OK',
                                        style: Montserrat_Regular.copyWith(
                                            color: whiteColor),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
