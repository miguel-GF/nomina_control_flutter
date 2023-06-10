// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nomina_detalle_concentrado.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NominaDetalleConcentrado _$NominaDetalleConcentradoFromJson(
        Map<String, dynamic> json) =>
    NominaDetalleConcentrado(
      nominaDetalleConcentradoId: json['nominaDetalleConcentradoId'] as int?,
      nominaId: json['nominaId'] as int,
      nominaDetalleId: json['nominaDetalleId'] as int,
      pagoId: json['pagoId'] as int?,
      folio: json['folio'] as int?,
      total: (json['total'] as num).toDouble(),
      status: json['status'] as int? ?? statusActivo,
    );

Map<String, dynamic> _$NominaDetalleConcentradoToJson(
        NominaDetalleConcentrado instance) =>
    <String, dynamic>{
      'nominaDetalleConcentradoId': instance.nominaDetalleConcentradoId,
      'nominaId': instance.nominaId,
      'nominaDetalleId': instance.nominaDetalleId,
      'pagoId': instance.pagoId,
      'folio': instance.folio,
      'status': instance.status,
      'total': instance.total,
    };
