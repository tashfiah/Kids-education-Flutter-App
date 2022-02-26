import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kids_edu_app/screens/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Fun Facts on Animals',
      theme: ThemeData(
        fontFamily: 'Pumpkin Story',
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
