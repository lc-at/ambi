import 'dart:ui';

import 'package:asm_ambi/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../theme/color.dart';
import '../theme/font.dart';
import '../widget/video_box_widget.dart';

class CallRoom extends StatelessWidget {
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
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.808,
            padding: EdgeInsets.only(
              top: 65,
              left: 42,
              right: 42,
              bottom: 54,
            ),
            // child: StaggeredGrid.count(
            //   crossAxisCount: 2,
            //   children: [
            //     StaggeredGridTile.count(
            //       mainAxisCellCount: 2,
            //       crossAxisCellCount: 2,
            //       child: VideoBox(),
            //     ),
            // ],
            // ),
            child: VideoBox(),
          ),
          // SizedBox(height: 68),
          Spacer(),
          Stack(
            children: [
              Container(
                child: ShaderMask(
                  child: Image(
                    image: AssetImage("assets/images/call_room_frame.png"),
                  ),
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      colors: [
                        mainColor2.withOpacity(0.3),
                        mainColor2.withOpacity(0.1),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      // begin: Alignment.topCenter,
                      // end: Alignment.bottomCenter,
                    ).createShader(bounds);
                  },
                  blendMode: BlendMode.srcATop,
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.075,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.11,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.05,
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            bottom: 18,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/sharescreen_icon.png',
                                  height: 18, width: 23, color: whiteColor),
                              SizedBox(width: 37),
                              Icon(Icons.mic, size: 24, color: whiteColor),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.30,
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            bottom: 18,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/camera_icon.png',
                                  height: 16, color: whiteColor),
                              SizedBox(width: 37),
                              Image.asset(
                                  'assets/images/change_camera_icon.png',
                                  height: 28,
                                  color: whiteColor),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.05,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/images/end_call_icon.png',
                  width: MediaQuery.of(context).size.width * 0.30,
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
