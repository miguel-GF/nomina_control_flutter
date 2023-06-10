// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operador.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Operador _$OperadorFromJson(Map<String, dynamic> json) => Operador(
      clienteId: json['clienteId'] as int?,
      folio: json['folio'] as int?,
      nombre: json['nombre'] as String,
      apellidos: json['apellidos'] as String,
      status: json['status'] as int? ?? statusActivo,
    );

Map<String, dynamic> _$OperadorToJson(Operador instance) => <String, dynamic>{
      'clienteId': instance.clienteId,
      'folio': instance.folio,
      'status': instance.status,
      'nombre': instance.nombre,
      'apellidos': instance.apellidos,
    };
