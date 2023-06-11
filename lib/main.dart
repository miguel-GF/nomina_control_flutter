import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/get_pages.dart';
import 'routes/name_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'App Nomina Control',
      defaultTransition: Transition.leftToRight,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: nameSplashScreen,
      getPages: GetPages().getPages,
    );
  }
}
