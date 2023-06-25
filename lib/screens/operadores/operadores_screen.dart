import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/operador_controller.dart';
import '../../routes/name_pages.dart';
import '../../themes/main_colors.dart';
import '../../widgets/operadores/operador_tile.dart';

class OperadoresScreen extends StatefulWidget {
  const OperadoresScreen({super.key});

  @override
  State<OperadoresScreen> createState() => _OperadoresScreenState();
}

class _OperadoresScreenState extends State<OperadoresScreen> {
  bool isInit = true;
  final OperadorController opController = Get.find<OperadorController>();

  @override
  Future<void> didChangeDependencies() async {
    if (isInit) {
      await opController.listar();
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
          TextButton(
            onPressed: () => Get.toNamed(nameOperadoresAltaScreen),
            child: Row(
              children: <Widget>[
                Text(
                  'Agregar',
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: blanco),
                ),
                const SizedBox(width: 6),
                Icon(Icons.add_outlined, color: blanco),
              ],
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 10),
            Expanded(
              child: Obx(
              () =>  ListView.builder(
                itemCount: opController.operadores.length,
                physics: const BouncingScrollPhysics(),
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                itemBuilder: (BuildContext context, int index) => Column(
                  children: <Widget>[OperadorTile(
                          operador: opController.operadores[index]),
                    
                    if (opController.operadores.length != index - 1)
                      const SizedBox(height: 16),
                  ],
                ),
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
