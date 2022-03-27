import 'dart:ui';

import 'package:asm_ambi/pages/call_room.dart';
import 'package:asm_ambi/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../theme/color.dart';
import '../theme/font.dart';

class JoinCall extends StatelessWidget {
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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 65,
              left: 42,
              right: 42,
              bottom: 54,
            ),
            child: Expanded(
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: FittedBox(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minWidth: 1,
                          minHeight: 1,
                        ),
                        child: Image.asset(
                            'assets/images/example_profile_picture.png'),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 18),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image.asset(
                            'assets/images/mic_on_join_call.png',
                            height: 48,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Image.asset(
                            'assets/images/video_on_join_call.png',
                            height: 48,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 47,
            width: 145,
            child: RaisedButton(
              onPressed: () => Get.to(() => CallRoom()),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0)),
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
                    borderRadius: BorderRadius.circular(25.0)),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 145.0, maxHeight: 47.0),
                  alignment: Alignment.center,
                  child: Text(
                    "Join now",
                    textAlign: TextAlign.center,
                    style: Montserrat_Medium.copyWith(
                      color: whiteColor,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
