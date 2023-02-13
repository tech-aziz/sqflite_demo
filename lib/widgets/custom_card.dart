import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/product_add_remove_controller.dart';

Widget customCard(
    {required Image image,
    required String productName,
    required int weight,
    required double price}) {
  final ProductAddRemoveController product =
      Get.put(ProductAddRemoveController());
  return Column(
    children: [
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 20,
        child: SizedBox(
          // alignment: Alignment.center,
          height: 135,
          // width: MediaQuery.of(context!).size.width,
          width: double.infinity,
          // decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(12),
          //     border: Border.all(color: Colors.black26, width: 2)),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 90,
                      width: 60,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: image,
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 90,
                      width: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            productName.toString(),
                            style: const TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            '$weight' 'kg',
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            '৳$price',
                            style: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.topRight,
                      height: 90,
                      width: 60,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.favorite_outline_rounded,
                            color: Colors.black12,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      product.decrementValue();
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2),
                      child: CircleAvatar(
                        backgroundColor: Colors.black12,
                        child: Center(
                          child: Icon(
                            Icons.remove,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: SizedBox(
                      width: 35,
                      height: 35,
                      child: Center(
                        child: Obx(() => Text(product.counterValue.toString(),
                            style: const TextStyle(
                                fontSize: 22, color: Colors.black))),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      product.incrementValue();
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: CircleAvatar(
                        backgroundColor: Colors.black12,
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
