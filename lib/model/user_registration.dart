import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserRegistration extends GetxController {
  TextEditingController nameTextController = TextEditingController();
  TextEditingController usernameTextController = TextEditingController();
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();

  var nameVal = ''.obs;
  var usernameVal = ''.obs;
  var emailVal = ''.obs;
  var passwordVal = ''.obs;

  void Registration(
      String name, String username, String email, String password) {
    nameVal.value = name;
    usernameVal.value = username;
    emailVal.value = email;
    passwordVal.value = password;
  }

  static UserRegistration get i => Get.find();
  // final GlobalKey<FormBuilderState> key = GlobalKey<FormBuilderState>();

  // ↓ place the text editing controller inside your... controller :)
  var formRegistrationC = TextEditingController();
}
