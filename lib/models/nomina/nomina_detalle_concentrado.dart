import 'package:json_annotation/json_annotation.dart';

part 'nomina_detalle_concentrado.g.dart';

@JsonSerializable()
class NominaDetalleConcentrado {
  NominaDetalleConcentrado({
    this.nominaDetalleConcentradoId,
    required this.nominaId,
    required this.nominaDetalleId,
    this.pagoId,
    this.folio,
    required this.total,
  });

  factory NominaDetalleConcentrado.fromJson(Map<String, dynamic> data) => _$NominaDetalleConcentradoFromJson(data);

  final int? nominaDetalleConcentradoId;
  final int nominaId;
  final int nominaDetalleId;
  final int? pagoId;
  final int? folio;
  final double total;

  Map<String, dynamic> toJson() => _$NominaDetalleConcentradoToJson(this);
}
