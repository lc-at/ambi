import 'dart:io';
import 'dart:ui';

import 'package:asm_ambi/pages/signup_password.dart';
import 'package:asm_ambi/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:image_picker/image_picker.dart';

import '../controller/camera_controller.dart';
import '../theme/font.dart';

class SignUpUpload extends StatelessWidget {
  final cameraControl = Get.put(CameraController());

  @override
  Widget build(BuildContext context) {
    // cameraControl.selectedImagePath.value = "";
    return Scaffold(
        // backgroundColor: Colors.black,
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
      child: Padding(
        padding: EdgeInsets.only(
          left: 35.0,
          right: 35.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 42),
            Text(
              "Upload your student ID !",
              style: Montserrat_Medium.copyWith(
                fontSize: 20,
                color: blackColor,
              ),
            ),
            SizedBox(height: 39),
            GestureDetector(
              onTap: () {
                // while (cameraControl.isCaptured == false ||
                //     cameraControl.selectedImagePath.value == null) {
                cameraControl.getImage(ImageSource.camera);
                // showDialog(
                //   context: context,
                //   builder: (BuildContext context) => ClipRect(
                //     child: AlertDialog(
                //       backgroundColor: Colors.transparent,
                //       content: ClipRect(
                //         child: new BackdropFilter(
                //           filter:
                //               new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                //           child: Container(
                //             height: 256,
                //             padding: EdgeInsets.only(
                //               bottom: 17,
                //               // top: 0,
                //               // left: 8,
                //               // right: 8,
                //             ),
                //             decoration: BoxDecoration(
                //               gradient: LinearGradient(
                //                 colors: [
                //                   mainColor2.withOpacity(0.25),
                //                   mainColor2.withOpacity(0.05),
                //                 ],
                //                 begin: Alignment.topLeft,
                //                 end: Alignment.bottomRight,
                //                 // begin: Alignment.topCenter,
                //                 // end: Alignment.bottomCenter,
                //               ),
                //               borderRadius: BorderRadius.circular(10.0),
                //               border: GradientBoxBorder(
                //                 gradient: LinearGradient(
                //                   colors: [
                //                     mainColor2.withOpacity(0.2),
                //                     mainColor2.withOpacity(0.0),
                //                   ],
                //                   begin: Alignment.topLeft,
                //                   end: Alignment.bottomRight,
                //                 ),
                //                 width: 1,
                //               ),
                //             ),
                //             child: Column(
                //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //               crossAxisAlignment: CrossAxisAlignment.center,
                //               children: [
                //                 Row(
                //                   mainAxisAlignment: MainAxisAlignment.center,
                //                   children: [
                //                     // Text(
                //                     //   'Are you sure to cancel\nyour room?',
                //                     //   style: Montserrat_SemiBold.copyWith(
                //                     //     fontSize: 16,
                //                     //     color: blackColor,
                //                     //   ),
                //                     //   textAlign: TextAlign.center,
                //                     // ),
                //                     ClipRRect(
                //                       borderRadius: BorderRadius.vertical(
                //                         top: Radius.circular(10),
                //                       ),
                //                       child: Image.file(
                //                         File(cameraControl
                //                             .selectedImagePath.value),
                //                         height: 188,
                //                         // fit: BoxFit.
                //                       ),
                //                     )
                //                   ],
                //                 ),
                //                 Row(
                //                   mainAxisAlignment:
                //                       MainAxisAlignment.spaceAround,
                //                   children: [
                //                     ElevatedButton(
                //                       style: ElevatedButton.styleFrom(
                //                           primary: mainColor1),
                //                       // onPressed: () => cameraControl
                //                       //     .isCaptured.value = false,
                //                       onPressed: () => cameraControl
                //                           .getImage(ImageSource.camera),
                //                       child: Text(
                //                         'Cancel',
                //                         style: Montserrat_Regular.copyWith(
                //                             color: blackColor),
                //                       ),
                //                     ),
                //                     TextButton(
                //                       style: TextButton.styleFrom(
                //                         primary: grayColor.withOpacity(0.5),
                //                         side: BorderSide(
                //                           width: 1,
                //                           color: grayColor.withOpacity(0.5),
                //                         ),
                //                       ),
                //                       onPressed: () {
                //                         cameraControl.isCaptured.value = true;
                //                         Get.back();
                //                       },
                //                       child: Text(
                //                         'OK',
                //                         style: Montserrat_Regular.copyWith(
                //                             color: blackColor),
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               ],
                //             ),
                //           ),
                //         ),
                //       ),
                //     ),
                //   ),
                // );
                // }
              },
              child: ClipRect(
                child: new BackdropFilter(
                  filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.39,
                    width: MediaQuery.of(context).size.width * 0.80,
                    padding: EdgeInsets.all(12),
                    child: Obx(
                      () => cameraControl.selectedImagePath.value == ''
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/signup_upload/icon_camera.png',
                                  color: blackColor,
                                  height: 42,
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  'Take photo',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: blackColor,
                                  ),
                                ),
                              ],
                            )
                          : Expanded(
                              child: Image.file(
                                  File(cameraControl.selectedImagePath.value)),
                            ),
                    ),
                    // decoration: BoxDecoration(
                    //   shape: BoxShape.rectangle,
                    //   borderRadius: BorderRadius.circular(15),
                    //   border: Border.all(
                    //     width: 4,
                    //     color: Color(0xffDBDBDB),
                    //   ),
                    // ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          mainColor2.withOpacity(0.12),
                          mainColor2.withOpacity(0.05),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        // begin: Alignment.topCenter,
                        // end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                      border: GradientBoxBorder(
                        gradient: LinearGradient(
                          colors: [
                            mainColor2.withOpacity(0.6),
                            mainColor2.withOpacity(0.1),
                          ],
                          begin: Alignment.center,
                          end: Alignment.bottomRight,
                        ),
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 44),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              // Image.asset(
              //   'assets/images/icon_next.png',
              //   height: 50,
              // ),
              GestureDetector(
                onTap: () => Get.to(() => SignUpPassword()),
                child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: mainColor3,
                      // gradient: LinearGradient(
                      //   colors: [
                      //     mainColor2.withOpacity(0.6),
                      //     mainColor2.withOpacity(0.1),
                      //   ],
                      //   begin: Alignment.topLeft,
                      //   end: Alignment.bottomRight,
                      //   // begin: Alignment.topCenter,
                      //   // end: Alignment.bottomCenter,
                      // ),
                      borderRadius: BorderRadius.circular(50.0),
                      // border: GradientBoxBorder(
                      //   gradient: LinearGradient(
                      //     colors: [
                      //       mainColor2.withOpacity(0.6),
                      //       mainColor2.withOpacity(0.1),
                      //     ],
                      //     begin: Alignment.center,
                      //     end: Alignment.bottomRight,
                      //   ),
                      //   width: 1,
                      // ),
                    ),
                    child: Icon(Icons.arrow_forward, color: whiteColor)),
              )
            ]),
          ],
        ),
      ),
    ));
  }
}
