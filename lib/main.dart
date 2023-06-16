import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'controllers/main_controller.dart';
import 'dbhelpers/database_helper.dart';
import 'routes/get_pages.dart';
import 'routes/name_pages.dart';
import 'themes/main_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final DatabaseHelper databaseHelper = DatabaseHelper.instance;
  // Inicializamos la base de datos
  await databaseHelper.database;

  SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
  ]).then((_) => _);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Inicializamos los controllers
    Get.put(MainController());
    return GetMaterialApp(
      title: 'App Nomina Control',
      defaultTransition: Transition.leftToRight,
      theme: themeData,
      initialRoute: nameHomeScreen,
      getPages: GetPages().getPages,
    );
  }
}
