import 'package:json_annotation/json_annotation.dart';

part 'operador.g.dart';

@JsonSerializable()
class Operador {
  Operador({
    this.clienteId,
    this.folio,
    required this.nombre,
    required this.apellidos,
  });

  factory Operador.fromJson(Map<String, dynamic> data) =>
      _$OperadorFromJson(data);

  final int? clienteId;
  final int? folio;
  final String nombre, apellidos;

  Map<String, dynamic> toJson() => _$OperadorToJson(this);
}
