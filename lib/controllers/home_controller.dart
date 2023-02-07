import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var increment = 0.obs;
  //increment function
  void incrementValue() {
    increment.value++;
  }

  //decrement function
  void decrementValue() {
    increment.value--;
  }

}
