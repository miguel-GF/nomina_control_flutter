import 'package:flutter/material.dart';

class NominasScreen extends StatelessWidget {
  const NominasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nóminas'),
      ),
      body: const Center(
        child: Text('PANTALLA Nóminas'),
      ),
    );
  }
}
