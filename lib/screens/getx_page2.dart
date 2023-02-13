import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/product_add_remove_controller.dart';

class GetXSecondPage extends StatelessWidget {
  final ProductAddRemoveController product = Get.put(ProductAddRemoveController());
   GetXSecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          product.counterValue.toString(),
          style: const TextStyle(fontSize: 20),
        ),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
              size: 18,
            )),
      ),
    );
  }
}
