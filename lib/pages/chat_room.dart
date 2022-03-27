import 'dart:ui';

import 'package:asm_ambi/pages/history_room_page.dart';
import 'package:asm_ambi/pages/join_call_page.dart';
import 'package:asm_ambi/pages/new_room.dart';
import 'package:asm_ambi/widget/past_room_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_9.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../theme/color.dart';
import '../theme/font.dart';
import '../widget/active_room_widget.dart';
import '../widget/bubble_chat_receive.dart';
import '../widget/bubble_chat_send.dart';
import '../widget/profile_widget.dart';
import 'profile_page.dart';

class ChatRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: bg2Color,
        child: SafeArea(
          left: false,
          right: false,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 86,
                    ),
                    BubbleChatSend(),
                    BubbleChatReceive(),
                    BubbleChatSend(),
                    BubbleChatReceive(),
                    BubbleChatSend(),
                    BubbleChatReceive(),
                    BubbleChatSend(),
                    BubbleChatReceive(),
                    SizedBox(
                      height: 57,
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 71,
                    decoration: BoxDecoration(
                      color: bg2Color,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 71,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          whiteColor.withOpacity(0.75),
                          whiteColor.withOpacity(0.25),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        // begin: Alignment.topCenter,
                        // end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 24,
                        right: 16,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Assembly (4)",
                            style: Montserrat_SemiBold.copyWith(
                              fontSize: 18,
                              color: blackColor,
                            ),
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () => showDialog(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                backgroundColor: Colors.transparent,
                                content: ClipRect(
                                  child: new BackdropFilter(
                                    filter: new ImageFilter.blur(
                                        sigmaX: 10.0, sigmaY: 10.0),
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
                                        borderRadius:
                                            BorderRadius.circular(20.0),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Do you want to join\nthe room\' call?',
                                                style: Montserrat_SemiBold
                                                    .copyWith(
                                                  fontSize: 14,
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
                                              TextButton(
                                                style: TextButton.styleFrom(
                                                  primary: grayColor
                                                      .withOpacity(0.5),
                                                  side: BorderSide(
                                                    width: 1,
                                                    color: grayColor
                                                        .withOpacity(0.5),
                                                  ),
                                                ),
                                                onPressed: () => Get.back(),
                                                child: Text(
                                                  'Cancel',
                                                  style: Montserrat_Regular
                                                      .copyWith(
                                                          color: whiteColor),
                                                ),
                                              ),
                                              ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  primary: mainColor1,
                                                ),
                                                onPressed: () =>
                                                    Get.to(() => JoinCall()),
                                                child: Text(
                                                  'OK',
                                                  style: Montserrat_Regular
                                                      .copyWith(
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
                            child: Container(
                              width: 28,
                              height: 28,
                              child: Center(
                                child: Icon(
                                  Icons.videocam_rounded,
                                  color: blackColor,
                                  size: 21,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 28,
                            height: 28,
                            child: Center(
                              child: Icon(
                                Icons.more_vert,
                                color: blackColor,
                                size: 17,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 7,
                        horizontal: 3,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: bg2Color,
                        ),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 23,
                          ),
                          width: double.infinity,
                          // height: 48,
                          // constraints: BoxConstraints(
                          //   maxHeight: double.infinity,
                          //   minHeight: 48,
                          //   minWidth: double.infinity,
                          // ),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                whiteColor.withOpacity(0.6),
                                whiteColor.withOpacity(0.1),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              // begin: Alignment.topCenter,
                              // end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IntrinsicHeight(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.emoji_emotions,
                                  size: 18,
                                  color: whiteColor,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Expanded(
                                  child: TextField(
                                    expands: true,
                                    maxLines: null,
                                    minLines: null,
                                    textAlignVertical: TextAlignVertical.center,
                                    style: SenderText.copyWith(fontSize: 16),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Image.asset(
                                  'assets/images/paperclip_icon.png',
                                  height: 18,
                                  width: 18,
                                ),
                                SizedBox(
                                  width: 18,
                                ),
                                Icon(
                                  Icons.mic_rounded,
                                  color: whiteColor,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
