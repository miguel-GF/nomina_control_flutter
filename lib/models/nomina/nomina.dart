import 'package:json_annotation/json_annotation.dart';

part 'nomina.g.dart';

@JsonSerializable()
class Nomina {
  Nomina({
    this.nominaId,
    this.folio,
    required this.periodoInicio,
    required this.periodoFin,
    required this.total,
  });

  factory Nomina.fromJson(Map<String, dynamic> data) => _$NominaFromJson(data);

  final int? nominaId;
  final int? folio;
  final DateTime periodoInicio, periodoFin;
  final double total;

  Map<String, dynamic> toJson() => _$NominaToJson(this);
}
