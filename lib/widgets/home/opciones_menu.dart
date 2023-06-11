import 'package:flutter/material.dart';

//models
import '../../models/widgets/opc_menu.dart';
//widgets
import 'opcion_menu.dart';

class OpcionesMenu extends StatelessWidget {
  const OpcionesMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final List<OpcMenu> menuList = <OpcMenu>[
      OpcMenu(
          icono: Icons.attach_money_rounded, titulo: 'Nómina', tag: 'nomina'),
      OpcMenu(
          icono: Icons.person_outline_rounded,
          titulo: 'Operadores',
          tag: 'operadores'),
    ];

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        mainAxisSpacing: 24,
        mainAxisExtent: 100,
      ),
      padding: const EdgeInsets.all(24.0),
      itemCount: menuList.length,
      itemBuilder: (BuildContext ctx, int index) {
        return OpcionMenu(opcMenu: menuList[index]);
      },
    );
  }
}
