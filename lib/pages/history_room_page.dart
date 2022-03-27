import 'dart:ui';

import 'package:asm_ambi/pages/home_page.dart';
import 'package:asm_ambi/pages/signup_upload.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../theme/color.dart';
import '../theme/font.dart';
import '../widget/past_room_widget.dart';
import 'matching_page.dart';

class HistoryRoom extends StatelessWidget {
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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 47,
                  ),
                  Text(
                    "Your history room",
                    style: Montserrat_Medium.copyWith(
                      fontSize: 20,
                      color: whiteColor,
                    ),
                  ),
                  SizedBox(height: 47),
                  GestureDetector(
                    onTap: () {},
                    child: PastRoom(),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: PastRoom(),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: PastRoom(),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: PastRoom(),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: PastRoom(),
                  ),
                  SizedBox(
                    height: 13,
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
