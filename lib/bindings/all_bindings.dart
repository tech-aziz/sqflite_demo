import 'package:get/get.dart';
import 'package:sqflite_demo/controllers/card_controller.dart';
import 'package:sqflite_demo/controllers/home_controller.dart';
import 'package:sqflite_demo/controllers/state_controller.dart';

class AllBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => StateController());
    // Get.lazyPut(()=>HomeController());
    // Get.lazyPut(() => CardController());
  }

}