// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pago.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pago _$PagoFromJson(Map<String, dynamic> json) => Pago(
      pagoId: json['pagoId'] as int?,
      operadorId: json['operadorId'] as int?,
      folio: json['folio'] as int?,
      concepto: json['concepto'] as String,
      total: (json['total'] as num).toDouble(),
      status: json['status'] as int? ?? statusActivo,
    );

Map<String, dynamic> _$PagoToJson(Pago instance) => <String, dynamic>{
      'pagoId': instance.pagoId,
      'operadorId': instance.operadorId,
      'folio': instance.folio,
      'status': instance.status,
      'concepto': instance.concepto,
      'total': instance.total,
    };
