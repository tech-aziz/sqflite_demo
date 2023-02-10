import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesDemo extends StatefulWidget {
  const SharedPreferencesDemo({super.key});

  @override
  State<SharedPreferencesDemo> createState() => _SharedPreferencesDemoState();
}

class _SharedPreferencesDemoState extends State<SharedPreferencesDemo> {
  
  int value = 0;
  SharedPreferences? sharedPreferences;

  Future initSharedPreference() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  setValue() {
    setState(() {
      value++;
      sharedPreferences?.setInt('id', value);
    });
  }

  loadValue()  {
    setState(() {
      value = sharedPreferences?.getInt('id') ?? 0;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SharedPreferences'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Center(
              child: Text(
                "Store, Fetch & Delete Shared Preferences",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                value.toString(),
                style: const TextStyle(
                    fontSize: 15,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setValue();
                },
                child: const Text('Increment')),
            const SizedBox(
              height: 12,
            ),
            // ElevatedButton(
            //     onPressed: () {
            //       setState(() async {
            //         SharedPreferencesDemo.preferences;
            //         SharedPreferencesDemo.preferences?.getInt('rollNumber');
            //       });
            //     },
            //     child: const Text('Fetch/Get_data')),
            // const SizedBox(
            //   height: 12,
            // ),
            // ElevatedButton(onPressed: () {}, child: const Text('Delete')),
          ],
        ),
      ),
    );
  }

  void saveData() {}
}
