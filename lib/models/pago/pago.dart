import 'package:json_annotation/json_annotation.dart';

part 'pago.g.dart';

@JsonSerializable()
class Pago {
  Pago({
    this.pagoId,
    this.operadorId,
    this.folio,
    required this.concepto,
    required this.total,
  });

  factory Pago.fromJson(Map<String, dynamic> data) => _$PagoFromJson(data);

  final int? pagoId;
  final int? operadorId;
  final int? folio;
  final String concepto;
  final double total;

  Map<String, dynamic> toJson() => _$PagoToJson(this);
}
