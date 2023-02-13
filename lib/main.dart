import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screens/getx_page1.dart';
import 'screens/sharedPreferences.dart';

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
      home:  GetX_Page1(),
      getPages: [
        GetPage(name: '/card-page', page: () => const SharedPreferencesDemo()),
      ],
    );
  }
}
