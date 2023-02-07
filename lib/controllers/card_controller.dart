import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CardController extends GetxController {

  Widget build(BuildContext context) {

    RxString text = 'Card Controller'.obs;

    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border:
              Border.all(width: 2, color: Color.fromARGB(15, 224, 78, 102))),
      child: Text(text.toString()),
    );

  }
}
