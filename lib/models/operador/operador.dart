import 'package:json_annotation/json_annotation.dart';

import '../../constantes.dart';

part 'operador.g.dart';

@JsonSerializable()
class Operador {
  Operador({
    this.clienteId,
    this.folio,
    required this.nombre,
    required this.apellidos,
    this.status = statusActivo,
  });

  factory Operador.fromJson(Map<String, dynamic> data) =>
      _$OperadorFromJson(data);

  final int? clienteId;
  final int? folio, status;
  final String nombre, apellidos;

  Map<String, dynamic> toJson() => _$OperadorToJson(this);
}
