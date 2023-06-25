import 'package:flutter/material.dart';

import '../../models/operador/operador.dart';
import '../../themes/main_colors.dart';

class OperadorTile extends StatelessWidget {
  const OperadorTile({
    super.key,
    required this.operador,
  });
  final Operador operador;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      title: Text('${operador.nombre} ${operador.apellidos}'),
      subtitle: Text(
        operador.folio.toString(),
        style:
            Theme.of(context).textTheme.caption!.copyWith(color: disabledColor),
      ),
      leading: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black38, width: 1.5),
            borderRadius: BorderRadius.circular(4),
          ),
          child: const Icon(
            Icons.person,
            size: 32,
          )),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: borderGray, width: 1.5),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
