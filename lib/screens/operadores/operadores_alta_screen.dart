import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/operador_controller.dart';
import '../../helpers/operador_helper.dart';
import '../../models/operador/operador.dart';
import '../../utils/widgets_utils.dart';
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
  final OperadorHelper operadorHelper = OperadorHelper();
  bool loader = false;

  Future<void> onPressed() async {
    try {
      if (formKey.currentState!.validate()) {
        setState(() {
          loader = true;
        });
        FocusScope.of(context).unfocus();
        final Operador operador = await operadorHelper.armarInsert(
          nombre: nombresTxtCtr.text.trim(),
          apellidos: apellidosTxtCtr.text.trim(),
        );
        final OperadorController opController = Get.find<OperadorController>();
        await opController.insert(operador: operador);
        setState(() {
          loader = false;
        });
        WidgetsUtils.showAwesomeDialog(
          message: 'Operador agregado correctamente',
        );
        nombresTxtCtr.clear();
        apellidosTxtCtr.clear();
        await opController.listar();
      }
    } catch (e) {
      setState(() {
        loader = false;
      });
      WidgetsUtils.showAwesomeDialog(
        dialogType: DialogType.error,
        message: e.toString(),
      );
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
