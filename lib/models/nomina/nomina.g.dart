// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nomina.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Nomina _$NominaFromJson(Map<String, dynamic> json) => Nomina(
      nominaId: json['nominaId'] as int?,
      folio: json['folio'] as int?,
      periodoInicio: DateTime.parse(json['periodoInicio'] as String),
      periodoFin: DateTime.parse(json['periodoFin'] as String),
      total: (json['total'] as num).toDouble(),
      status: json['status'] as int? ?? statusActivo,
    );

Map<String, dynamic> _$NominaToJson(Nomina instance) => <String, dynamic>{
      'nominaId': instance.nominaId,
      'folio': instance.folio,
      'status': instance.status,
      'periodoInicio': instance.periodoInicio.toIso8601String(),
      'periodoFin': instance.periodoFin.toIso8601String(),
      'total': instance.total,
    };
