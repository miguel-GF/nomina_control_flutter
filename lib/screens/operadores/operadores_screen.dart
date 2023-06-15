import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/name_pages.dart';

class OperadoresScreen extends StatelessWidget {
  const OperadoresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Operadores'),
        actions: <Widget>[
          IconButton(
            onPressed: () => Get.toNamed(nameOperadoresAltaScreen),
            icon: const Icon(Icons.add_outlined),
          ),
        ],
      ),
      body: const Center(
        child: Text('PANTALLA OPERADORES'),
      ),
    );
  }
}
