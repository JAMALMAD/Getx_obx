

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class Countercontroller extends GetxController{
  var count = 0.obs;
  void increament() {
    count ++;
  }

}