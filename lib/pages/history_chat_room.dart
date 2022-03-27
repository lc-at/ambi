import 'dart:ui';

import 'package:asm_ambi/pages/history_room_page.dart';
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
import '../widget/profile_widget.dart';
import 'profile_page.dart';

class HistoryChatRoom extends StatelessWidget {
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
                    ChatBubble(
                      clipper: ChatBubbleClipper9(type: BubbleType.sendBubble),
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.symmetric(
                        vertical: 3,
                        horizontal: 10,
                      ),
                      backGroundColor: Color.fromRGBO(3, 85, 71, 1),
                      shadowColor: Color.fromRGBO(0, 0, 0, 0),
                      child: Container(
                        padding: EdgeInsets.all(3),
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.7,
                        ),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                          style: SenderText,
                        ),
                      ),
                    ),
                    ChatBubble(
                      clipper:
                          ChatBubbleClipper9(type: BubbleType.receiverBubble),
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.symmetric(
                        vertical: 3,
                        horizontal: 10,
                      ),
                      backGroundColor: Colors.white70,
                      shadowColor: Color.fromRGBO(0, 0, 0, 0),
                      child: Container(
                        padding: EdgeInsets.all(3),
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.7,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shizuka",
                              style: SenderName,
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                              style: ReceiverText,
                            ),
                          ],
                        ),
                      ),
                    ),
                    ChatBubble(
                      clipper: ChatBubbleClipper9(type: BubbleType.sendBubble),
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.symmetric(
                        vertical: 3,
                        horizontal: 10,
                      ),
                      backGroundColor: Color.fromRGBO(3, 85, 71, 1),
                      shadowColor: Color.fromRGBO(0, 0, 0, 0),
                      child: Container(
                        padding: EdgeInsets.all(3),
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.7,
                        ),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                          style: SenderText,
                        ),
                      ),
                    ),
                    ChatBubble(
                      clipper:
                          ChatBubbleClipper9(type: BubbleType.receiverBubble),
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.symmetric(
                        vertical: 3,
                        horizontal: 10,
                      ),
                      backGroundColor: Colors.white70,
                      shadowColor: Color.fromRGBO(0, 0, 0, 0),
                      child: Container(
                        padding: EdgeInsets.all(3),
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.7,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shizuka",
                              style: SenderName,
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                              style: ReceiverText,
                            ),
                          ],
                        ),
                      ),
                    ),
                    ChatBubble(
                      clipper: ChatBubbleClipper9(type: BubbleType.sendBubble),
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.symmetric(
                        vertical: 3,
                        horizontal: 10,
                      ),
                      backGroundColor: Color.fromRGBO(3, 85, 71, 1),
                      shadowColor: Color.fromRGBO(0, 0, 0, 0),
                      child: Container(
                        padding: EdgeInsets.all(3),
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.7,
                        ),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                          style: SenderText,
                        ),
                      ),
                    ),
                    ChatBubble(
                      clipper:
                          ChatBubbleClipper9(type: BubbleType.receiverBubble),
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.symmetric(
                        vertical: 3,
                        horizontal: 10,
                      ),
                      backGroundColor: Colors.white70,
                      shadowColor: Color.fromRGBO(0, 0, 0, 0),
                      child: Container(
                        padding: EdgeInsets.all(3),
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.7,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shizuka",
                              style: SenderName,
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                              style: ReceiverText,
                            ),
                          ],
                        ),
                      ),
                    ),
                    ChatBubble(
                      clipper: ChatBubbleClipper9(type: BubbleType.sendBubble),
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.symmetric(
                        vertical: 3,
                        horizontal: 10,
                      ),
                      backGroundColor: Color.fromRGBO(3, 85, 71, 1),
                      shadowColor: Color.fromRGBO(0, 0, 0, 0),
                      child: Container(
                        padding: EdgeInsets.all(3),
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.7,
                        ),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                          style: SenderText,
                        ),
                      ),
                    ),
                    ChatBubble(
                      clipper:
                          ChatBubbleClipper9(type: BubbleType.receiverBubble),
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.symmetric(
                        vertical: 3,
                        horizontal: 10,
                      ),
                      backGroundColor: Colors.white70,
                      shadowColor: Color.fromRGBO(0, 0, 0, 0),
                      child: Container(
                        padding: EdgeInsets.all(3),
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.7,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shizuka",
                              style: SenderName,
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                              style: ReceiverText,
                            ),
                          ],
                        ),
                      ),
                    ),
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
                      padding: const EdgeInsets.symmetric(horizontal: 24),
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
                          // Icon(
                          //   Icons.videocam_rounded,
                          //   color: blackColor,
                          //   size: 21,
                          // ),
                          // SizedBox(
                          //   width: 34,
                          // ),
                          // Icon(
                          //   Icons.more_vert,
                          //   color: blackColor,
                          //   size: 17,
                          // ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    color: grayColor,
                    height: 48,
                    alignment: Alignment.bottomCenter,
                    child: Center(
                        child: Text(
                      'The room already closed',
                      style: Montserrat_Regular.copyWith(
                        color: blackColor.withOpacity(0.5),
                        fontSize: 14,
                      ),
                    )),
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
