import 'dart:developer';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sqflite_demo/controllers/card_controller.dart';
import 'package:sqflite_demo/controllers/state_controller.dart';
import 'package:sqflite_demo/screens/profile_page.dart';

import '../controllers/home_controller.dart';
import 'card_page.dart';
import 'transaction_page.dart';

class SqfliteDemo extends GetView<StateController> {
  StateController stateController = Get.put(StateController());
  @override
  Widget build(BuildContext context) {
    // print('$increment');
    // log('$increment');
    return Scaffold(
      appBar: AppBar(
        title: Obx(() {
          return Text('${controller.counter.value}');
        }),
        centerTitle: true,
      ),
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.amber,
              onPressed: () {
                controller.incrementValue();
              },
              child: Icon(
                Icons.add,
                color: Colors.green,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            FloatingActionButton(
              backgroundColor: Colors.blueAccent,
              onPressed: () {},
              child: Icon(
                Icons.minimize_rounded,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            FloatingActionButton.extended(
              onPressed: () {
                Get.to(ProfilePage(),
                    transition: Transition.upToDown,
                    duration: Duration(seconds: 1),
                    curve: Curves.bounceIn,
                    arguments: 'from home page');
                Get.snackbar(
                  'Yes',
                  'No',
                  snackPosition: SnackPosition.BOTTOM,
                  icon: Icon(Icons.person_add),
                );
              },
              label: Text("Go"),
            )
          ],
        )
      ],
      body: Center(
        child: SingleChildScrollView(
          primary: false,
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                      elevation: 15,
                      child: Center(child: Obx(
                        () {
                          return Text(
                            '${controller.counter.value}',
                            style: TextStyle(
                                fontSize: 30,
                                shadows: [
                                  Shadow(
                                    color: Colors.red,
                                    blurRadius: 10,
                                  )
                                ],
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                                letterSpacing: 4),
                          );
                        },
                      )))),
              SizedBox(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                      elevation: 15,
                      child: Center(
                          child: Text(
                        'One',
                        style: TextStyle(
                            fontSize: 30,
                            shadows: [
                              Shadow(
                                color: Colors.red,
                                blurRadius: 10,
                              )
                            ],
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            letterSpacing: 4),
                      )))),
              SizedBox(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: InkWell(
                    onTap: () {
                      Get.to(CardPage(),
                          transition: Transition.upToDown,
                          duration: Duration(seconds: 1),
                          curve: Curves.bounceIn,
                          arguments: {
                            'price': Random().nextInt(1000).toString(),
                            'Product': 'Drinks'
                          });
                    },
                    child: Card(
                        elevation: 15,
                        child: Center(
                            child: Text(
                          'Card',
                          style: TextStyle(
                              fontSize: 30,
                              shadows: [
                                Shadow(
                                  color: Colors.red,
                                  blurRadius: 10,
                                )
                              ],
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                              letterSpacing: 4),
                        ))),
                  )),
              SizedBox(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: InkWell(
                    onTap: () {
                      Get.toNamed('/card-page');
                    },
                    child: Card(
                        elevation: 15,
                        child: Center(
                            child: Text(
                          'Transaction',
                          style: TextStyle(
                              fontSize: 30,
                              shadows: [
                                Shadow(
                                  color: Colors.red,
                                  blurRadius: 10,
                                )
                              ],
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                              letterSpacing: 4),
                        ))),
                  )),
              SizedBox(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                      elevation: 15,
                      child: Center(
                          child: Text(
                        'One',
                        style: TextStyle(
                            fontSize: 30,
                            shadows: [
                              Shadow(
                                color: Colors.red,
                                blurRadius: 10,
                              )
                            ],
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            letterSpacing: 4),
                      )))),
              SizedBox(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                      elevation: 15,
                      child: Center(
                          child: Text(
                        'One',
                        style: TextStyle(
                            fontSize: 30,
                            shadows: [
                              Shadow(
                                color: Colors.red,
                                blurRadius: 10,
                              )
                            ],
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            letterSpacing: 4),
                      )))),
              SizedBox(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                      elevation: 15,
                      child: Center(
                          child: Text(
                        'One',
                        style: TextStyle(
                            fontSize: 30,
                            shadows: [
                              Shadow(
                                color: Colors.red,
                                blurRadius: 10,
                              )
                            ],
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            letterSpacing: 4),
                      )))),
              SizedBox(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                      elevation: 15,
                      child: Center(
                          child: Text(
                        'One',
                        style: TextStyle(
                            fontSize: 30,
                            shadows: [
                              Shadow(
                                color: Colors.red,
                                blurRadius: 10,
                              )
                            ],
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            letterSpacing: 4),
                      )))),
              SizedBox(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                      elevation: 15,
                      child: Center(
                          child: Text(
                        'One',
                        style: TextStyle(
                            fontSize: 30,
                            shadows: [
                              Shadow(
                                color: Colors.red,
                                blurRadius: 10,
                              )
                            ],
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            letterSpacing: 4),
                      )))),
              SizedBox(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                      elevation: 15,
                      child: Center(
                          child: Text(
                        'One',
                        style: TextStyle(
                            fontSize: 30,
                            shadows: [
                              Shadow(
                                color: Colors.red,
                                blurRadius: 10,
                              )
                            ],
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            letterSpacing: 4),
                      )))),
              SizedBox(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                      elevation: 15,
                      child: Center(
                          child: Text(
                        'One',
                        style: TextStyle(
                            fontSize: 30,
                            shadows: [
                              Shadow(
                                color: Colors.red,
                                blurRadius: 10,
                              )
                            ],
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            letterSpacing: 4),
                      )))),
              SizedBox(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                      elevation: 15,
                      child: Center(
                          child: Text(
                        'One',
                        style: TextStyle(
                            fontSize: 30,
                            shadows: [
                              Shadow(
                                color: Colors.red,
                                blurRadius: 10,
                              )
                            ],
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            letterSpacing: 4),
                      )))),
              SizedBox(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                      elevation: 15,
                      child: Center(
                          child: Text(
                        'One',
                        style: TextStyle(
                            fontSize: 30,
                            shadows: [
                              Shadow(
                                color: Colors.red,
                                blurRadius: 10,
                              )
                            ],
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            letterSpacing: 4),
                      )))),
              SizedBox(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                      elevation: 15,
                      child: Center(
                          child: Text(
                        'One',
                        style: TextStyle(
                            fontSize: 30,
                            shadows: [
                              Shadow(
                                color: Colors.red,
                                blurRadius: 10,
                              )
                            ],
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            letterSpacing: 4),
                      )))),
              SizedBox(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                      elevation: 15,
                      child: Center(
                          child: Text(
                        'One',
                        style: TextStyle(
                            fontSize: 30,
                            shadows: [
                              Shadow(
                                color: Colors.red,
                                blurRadius: 10,
                              )
                            ],
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            letterSpacing: 4),
                      )))),
            ],
          ),
        ),
      ),
    );
  }
}
