import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sqflite_demo/screens/home_page.dart';
import 'screens/transaction_page.dart';

void main() {
  // AllBinding().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SqfliteDemo(),
      getPages: [
        GetPage(name: '/card-page', page: () => TransactionPage()),

        ],
    );
  }
}
