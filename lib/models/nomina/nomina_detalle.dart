import 'package:json_annotation/json_annotation.dart';

import '../../constants/constants_globals.dart';

part 'nomina_detalle.g.dart';

@JsonSerializable()
class NominaDetalle {
  NominaDetalle({
    this.nominaDetalleId,
    required this.nominaId,
    required this.operadorId,
    this.folio,
    required this.totalPagos,
    this.status = statusActivo,
  });

  factory NominaDetalle.fromJson(Map<String, dynamic> data) =>
      _$NominaDetalleFromJson(data);

  final int? nominaDetalleId;
  final int nominaId;
  final int operadorId;
  final int? folio, status;
  final double totalPagos;

  Map<String, dynamic> toJson() => _$NominaDetalleToJson(this);
}
