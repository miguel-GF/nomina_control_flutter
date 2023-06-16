// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operador.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Operador _$OperadorFromJson(Map<String, dynamic> json) => Operador(
      operadorId: json['operadorId'] as int?,
      folio: json['folio'] as int?,
      nombre: json['nombre'] as String,
      apellidos: json['apellidos'] as String,
      status: json['status'] as int? ?? statusActivo,
      registroFecha: json['registroFecha'] == null
          ? null
          : DateTime.parse(json['registroFecha'] as String),
      registroAutorId: json['registroAutorId'] as int?,
    );

Map<String, dynamic> _$OperadorToJson(Operador instance) => <String, dynamic>{
      'operadorId': instance.operadorId,
      'folio': instance.folio,
      'status': instance.status,
      'nombre': instance.nombre,
      'apellidos': instance.apellidos,
      'registroFecha': instance.registroFecha?.toIso8601String(),
      'registroAutorId': instance.registroAutorId,
    };
