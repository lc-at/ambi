import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gradient_borders/gradient_borders.dart';

import '../theme/color.dart';
import '../theme/font.dart';

class ActiveRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 137,
            width: 302,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  mainColor2.withOpacity(0.2),
                  mainColor2.withOpacity(0.1),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                // begin: Alignment.topCenter,
                // end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(20.0),
              border: GradientBoxBorder(
                gradient: LinearGradient(
                  colors: [
                    mainColor2.withOpacity(0.4),
                    mainColor2.withOpacity(0.1),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                width: 1,
              ),
            ),
            padding: EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 25,
            ),
            child: Row(
              children: [
                //Grup Icon
                ClipRRect(
                  borderRadius: BorderRadius.circular(54),
                  child: Container(
                      height: 108,
                      width: 108,
                      color: whiteColor,
                      child: StaggeredGrid.count(crossAxisCount: 2, children: [
                        StaggeredGridTile.count(
                          mainAxisCellCount: 1,
                          crossAxisCellCount: 1,
                          child: Image.asset(
                            'assets/images/profile/profile_icon.png',
                            height: 63,
                            width: 63,
                          ),
                        ),
                        StaggeredGridTile.count(
                          mainAxisCellCount: 1,
                          crossAxisCellCount: 1,
                          child: Image.asset(
                            'assets/images/profile/profile_icon.png',
                            height: 63,
                            width: 63,
                          ),
                        ),
                        StaggeredGridTile.count(
                          mainAxisCellCount: 1,
                          crossAxisCellCount: 2,
                          child: Image.asset(
                            'assets/images/profile/profile_icon.png',
                            height: 63,
                            width: 63,
                          ),
                        ),
                      ])),
                ),
                SizedBox(
                  width: 14,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Assembly",
                      style: Montserrat_Bold.copyWith(
                        fontSize: 16,
                        color: whiteColor,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    //Group tag
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              'assets/images/group_tag_shape.png',
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  "Chemistry",
                                  style: Roboto_Regular.copyWith(
                                      fontSize: 5, color: blackColor),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 4),
                        Stack(
                          children: [
                            Image.asset(
                              'assets/images/group_tag_shape.png',
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  "Chemistry",
                                  style: Roboto_Regular.copyWith(
                                      fontSize: 5, color: blackColor),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Container(
                      width: 120,
                      child: RichText(
                        text: TextSpan(
                          text:
                              "You, Ali Ababa, Shizuka, John Doe are in this room",
                          style: Roboto_Regular.copyWith(
                            fontSize: 10,
                            color: whiteColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 17,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: mainColor1,
                        ),
                        child: Center(
                          child: Text(
                            "Enter Room",
                            style: Roboto_Regular.copyWith(
                              fontSize: 8,
                              color: blackColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
