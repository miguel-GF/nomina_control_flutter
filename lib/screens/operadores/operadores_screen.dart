import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/operador_controller.dart';
import '../../models/operador/operador.dart';
import '../../routes/name_pages.dart';

class OperadoresScreen extends StatefulWidget {
  const OperadoresScreen({super.key});

  @override
  State<OperadoresScreen> createState() => _OperadoresScreenState();
}

class _OperadoresScreenState extends State<OperadoresScreen> {
  bool isInit = true;
  List<Operador> operadores = <Operador>[];

  @override
  Future<void> didChangeDependencies() async {
    if (isInit) {
      operadores = await OperadorController().listar();
      isInit = false;
      setState(() {});
    }
    super.didChangeDependencies();
  }

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
      body: Center(
        child: Column(
          children: <Widget>[
            const Text('PANTALLA OPERADORES'),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: operadores.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) => Text(
                    '${operadores[index].nombre} ${operadores[index].apellidos}'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
