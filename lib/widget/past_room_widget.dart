import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

import '../theme/color.dart';
import '../theme/font.dart';

class PastRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 82,
            width: 302,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  mainColor2.withOpacity(0.3),
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
                    mainColor2.withOpacity(0.5),
                    mainColor2.withOpacity(0.2),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                width: 1,
              ),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 24,
                    horizontal: 25,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 84,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ambis",
                              style: Montserrat_SemiBold.copyWith(
                                fontSize: 16,
                                color: whiteColor,
                              ),
                            ),
                            Text(
                              "March 5, 2022",
                              style: Roboto_Medium.copyWith(
                                fontSize: 8,
                                color: whiteColor,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 18),
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
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16,
                  ),
                  child: Row(
                    children: [
                      Spacer(),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.more_vert,
                              size: 9,
                              color: whiteColor,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              size: 9,
                              color: whiteColor,
                            ),
                          ]),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
