import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

import '../theme/color.dart';
import '../theme/font.dart';

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 137,
      width: 334,
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
              mainColor2.withOpacity(0.2),
              mainColor2.withOpacity(0.5),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          width: 1,
        ),
      ),
      padding: EdgeInsets.symmetric(
        vertical: 37,
        horizontal: 40,
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/profile/profile_icon.png',
            height: 63,
            width: 63,
          ),
          SizedBox(
            width: 14,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Alexa Watson",
                style: Montserrat_Bold.copyWith(
                  fontSize: 16,
                  color: whiteColor,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                "Chemistry",
                style: Roboto_Medium.copyWith(
                  fontSize: 14,
                  color: grayColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
