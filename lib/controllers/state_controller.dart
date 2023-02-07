import 'package:get/get.dart';

class StateController extends GetxController{

var counter = 0.obs;
  incrementValue(){
    counter.value++;
  }

}