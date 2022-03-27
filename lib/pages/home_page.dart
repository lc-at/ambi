import 'dart:ui';

import 'package:asm_ambi/pages/chat_room.dart';
import 'package:asm_ambi/pages/history_room_page.dart';
import 'package:asm_ambi/pages/new_room.dart';
import 'package:asm_ambi/widget/past_room_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../theme/color.dart';
import '../theme/font.dart';
import '../widget/active_room_widget.dart';
import '../widget/profile_widget.dart';
import 'history_chat_room.dart';
import 'profile_page.dart';

class HomePage extends StatelessWidget {
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
          left: false,
          right: false,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                left: 19.0,
                right: 19.0,
                top: 19,
                bottom: 29,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //home profile
                  GestureDetector(
                    onTap: () => Get.to(() => ProfilePage()),
                    child: ProfileWidget(),
                  ),
                  // end home profile

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Active Room",
                              style: Montserrat_Medium.copyWith(
                                color: whiteColor,
                                fontSize: 16,
                              ),
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () => Get.to(() => NewRoom()),
                              child: Container(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Add new room",
                                      style: Montserrat_Medium.copyWith(
                                        color: whiteColor,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(width: 2),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 16,
                                      color: whiteColor,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 14),
                        //Active Room widget card
                        GestureDetector(
                          onTap: () => Get.to(ChatRoom()),
                          child: ActiveRoom(),
                        ),
                        SizedBox(height: 24),
                        Text(
                          "History",
                          style: Montserrat_Medium.copyWith(
                            color: whiteColor,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 14),
                        //History Room widget card
                        GestureDetector(
                          onTap: () => Get.to(() => HistoryChatRoom()),
                          child: PastRoom(),
                        ),
                        SizedBox(height: 12),
                        GestureDetector(
                          onTap: () => Get.to(() => HistoryRoom()),
                          child: Row(
                            children: [
                              Spacer(),
                              Text('See all',
                                  style: Montserrat_Regular.copyWith(
                                    fontSize: 7,
                                    color: grayColor,
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
