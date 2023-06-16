import 'package:get/get.dart';

import '../dbhelpers/operador_dbhelper.dart';
import '../models/operador/operador.dart';

class OperadorController extends GetxController {
  final OperadorDbhelper operadorDbhelper = OperadorDbhelper();

  Future<void> insert({required Operador operador}) async {
    try {
      final int result = await operadorDbhelper.insert(operador: operador);
      if (result == 0) {
        throw Exception('No se pudo completar la acción, intente nuevamente.');
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<List<Operador>> listar() async {
    try {
      final List<Operador> operadores = await operadorDbhelper.listar();
      return operadores;
    } catch (e) {
      rethrow;
    }
  }
}
