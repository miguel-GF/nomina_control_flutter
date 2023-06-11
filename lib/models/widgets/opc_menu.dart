import 'package:json_annotation/json_annotation.dart';

part 'opc_menu.g.dart';

@JsonSerializable()
class OpcMenu {
  OpcMenu({
    required this.icono,
    required this.titulo,
    required this.tag,
  });

  factory OpcMenu.fromJson(Map<String, dynamic> data) =>
      _$OpcMenuFromJson(data);

  final dynamic icono;
  final String titulo, tag;

  Map<String, dynamic> toJson() => _$OpcMenuToJson(this);
}
