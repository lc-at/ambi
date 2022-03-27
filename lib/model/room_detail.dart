import 'package:get/get.dart';

class UserProfile extends GetxController {
  var roomNameVal = ''.obs;
  var intentionVal = ''.obs;
  var tagVal = [].obs;
  var capacityVal = 0.obs;

  void Profile(String roomName, String intention, List tag, int capacity) {
    roomNameVal.value = roomName;
    intentionVal.value = intention;
    tagVal.value = tag;
    capacityVal.value = capacity;
  }
}
