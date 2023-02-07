import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sqflite_demo/controllers/home_controller.dart';

import '../controllers/state_controller.dart';

class ProfilePage extends GetView<StateController> {
  @override
  Widget build(BuildContext context) {
    // final StateController _stateController = Get.put(StateController());
    // final HomeController _homeController = Get.put(HomeController());
    // StateController stateController = Get.put(StateController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
        centerTitle: true,
        actions: [Text('${Get.arguments}')],
      ),
      body: Center(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Center(child: Text('${controller.counter.value}'));
            }),
          ],
        ),
      )),
    );
  }
}
