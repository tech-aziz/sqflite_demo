import 'package:get/get.dart';

class ProductAddRemoveController extends GetxController {
  RxInt counterValue = 0.obs;

  void incrementValue(){
    counterValue.value++;
  }

  void decrementValue(){
    counterValue.value--;
  }
}