import 'package:asm_ambi/pages/login_page.dart';
import 'package:asm_ambi/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../theme/color.dart';
import '../theme/font.dart';

class StartMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              'assets/images/logo_ambi.png',
              height: 127,
            ),
            SizedBox(
              height: 115,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 73),
              height: 51,
              // width: 213,
              child: ElevatedButton(
                onPressed: () => Get.to(() => SignUp()),
                style: ElevatedButton.styleFrom(
                  shadowColor: blackColor.withOpacity(0.5),
                  primary: mainColor3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  padding: EdgeInsets.all(0.0),
                ),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 213.0, maxHeight: 51.0),
                  alignment: Alignment.center,
                  child: Text(
                    "Get Started",
                    textAlign: TextAlign.center,
                    style: Montserrat_SemiBold.copyWith(
                      color: whiteColor,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 19,
            ),
            Container(
              height: 51,
              padding: EdgeInsets.symmetric(horizontal: 73),
              // width: 213,
              child: ElevatedButton(
                onPressed: () => Get.to(() => LoginPage()),
                style: ElevatedButton.styleFrom(
                  shadowColor: blackColor.withOpacity(0.5),
                  primary: whiteColor.withOpacity(0.1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  padding: EdgeInsets.all(0.0),
                ),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        mainColor2.withOpacity(0.6),
                        mainColor2.withOpacity(0.1),
                        // Colors.transparent,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      // begin: Alignment.topCenter,
                      // end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(
                      width: 1,
                      color: mainColor2.withOpacity(0.3),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Login",
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
            SizedBox(
              height: 73,
            ),
          ],
        ),
      ),
    );
  }
}
