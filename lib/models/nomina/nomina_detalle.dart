import 'package:json_annotation/json_annotation.dart';

part 'nomina_detalle.g.dart';

@JsonSerializable()
class NominaDetalle {
  NominaDetalle({
    this.nominaDetalleId,
    required this.nominaId,
    required this.operadorId,
    this.folio,
    required this.totalPagos,
  });

  factory NominaDetalle.fromJson(Map<String, dynamic> data) => _$NominaDetalleFromJson(data);

  final int? nominaDetalleId;
  final int nominaId;
  final int operadorId;
  final int? folio;
  final double totalPagos;

  Map<String, dynamic> toJson() => _$NominaDetalleToJson(this);
}
