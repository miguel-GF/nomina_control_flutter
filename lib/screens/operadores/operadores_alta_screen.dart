import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/common/the_bottom_sheet.dart';
import '../../widgets/common/the_column_input.dart';

class OperadoresAltaScreen extends StatefulWidget {
  const OperadoresAltaScreen({super.key});

  @override
  State<OperadoresAltaScreen> createState() => _OperadoresAltaScreenState();
}

class _OperadoresAltaScreenState extends State<OperadoresAltaScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nombresTxtCtr = TextEditingController();
  final TextEditingController apellidosTxtCtr = TextEditingController();
  bool loader = false;

  void onPressed() {
    print('llego');
    if (formKey.currentState!.validate()) {
      print('correcto');
      setState(() {
        loader = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuevo operador'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Form(
                  key: formKey,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    width: Get.width * 0.8,
                    child: Column(
                      children: <Widget>[
                        TheColumnInput(
                          label: 'Nombre/s',
                          hintText: 'Nombre/s del operador',
                          txtController: nombresTxtCtr,
                        ),
                        const SizedBox(height: 24),
                        TheColumnInput(
                          label: 'Apellidos',
                          hintText: 'Apellidos del operador',
                          txtController: apellidosTxtCtr,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomSheet: TheBottomSheet(
        btnLabel: 'GUARDAR',
        loader: loader,
        onPressed: () => onPressed(),
      ),
    );
  }
}
