import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/screens/splash_screen.dart';
import 'routes/get_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
      getPages: GetPages().getPages,
    );
  }
}
