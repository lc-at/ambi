import 'package:get/get.dart';

class UserProfile extends GetxController {
  var nameVal = ''.obs;
  var usernameVal = ''.obs;
  var schoolVal = ''.obs;
  var majorVal = ''.obs;

  void Profile(String name, String username, String school, String major) {
    nameVal.value = name;
    usernameVal.value = username;
    schoolVal.value = school;
    majorVal.value = major;
  }
}
