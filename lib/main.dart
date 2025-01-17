import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stromleser/helper/global.dart';
import 'package:stromleser/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      home: const HomeScreen(),
    );
  }
}

