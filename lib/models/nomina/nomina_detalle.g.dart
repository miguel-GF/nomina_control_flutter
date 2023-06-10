// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nomina_detalle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NominaDetalle _$NominaDetalleFromJson(Map<String, dynamic> json) =>
    NominaDetalle(
      nominaDetalleId: json['nominaDetalleId'] as int?,
      nominaId: json['nominaId'] as int,
      operadorId: json['operadorId'] as int,
      folio: json['folio'] as int?,
      totalPagos: (json['totalPagos'] as num).toDouble(),
      status: json['status'] as int? ?? statusActivo,
    );

Map<String, dynamic> _$NominaDetalleToJson(NominaDetalle instance) =>
    <String, dynamic>{
      'nominaDetalleId': instance.nominaDetalleId,
      'nominaId': instance.nominaId,
      'operadorId': instance.operadorId,
      'folio': instance.folio,
      'status': instance.status,
      'totalPagos': instance.totalPagos,
    };
