import '../constants/constants_globals.dart';
import '../dbhelpers/operador_dbhelper.dart';
import '../models/operador/operador.dart';

class OperadorHelper {
  final OperadorDbhelper operadorDbhelper = OperadorDbhelper();
  Future<Operador> armarInsert({
    required String nombre,
    required String apellidos,
  }) async {
    final Operador operador = Operador(
      nombre: nombre,
      apellidos: apellidos,
      folio: await operadorDbhelper.getMaxValue(columnName: 'operadorId'),
      registroAutorId: systemId,
      registroFecha: DateTime.now(),
    );

    return operador;
  }
}
