import 'package:json_annotation/json_annotation.dart';

import '../../constants/constants_globals.dart';

part 'operador.g.dart';

@JsonSerializable()
class Operador {
  Operador({
    this.operadorId,
    this.folio,
    required this.nombre,
    required this.apellidos,
    this.status = statusActivo,
    this.registroFecha,
    this.registroAutorId,
  });

  factory Operador.fromJson(Map<String, dynamic> data) =>
      _$OperadorFromJson(data);

  final int? operadorId;
  final int? folio, status;
  final String nombre, apellidos;
  final DateTime? registroFecha;
  final int? registroAutorId;

  Map<String, dynamic> toJson() => _$OperadorToJson(this);
}
