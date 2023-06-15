import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/constants_menu.dart';
import '../../models/widgets/opc_menu.dart';
import '../../routes/name_pages.dart';

class OpcionMenu extends StatelessWidget {
  const OpcionMenu({
    super.key,
    required this.opcMenu,
  });
  final OpcMenu opcMenu;

  @override
  Widget build(BuildContext context) {
    void onTap() {
      switch (opcMenu.tag) {
        case opcionMenuNomina:
          Get.toNamed(nameNominasScreen);
          break;
        case opcionMenuOperador:
          Get.toNamed(nameOperadoresScreen);
          break;
        case opcionMenuPagos:
          Get.toNamed(namePagosScreen);
          break;
        default:
      }
    }

    return InkWell(
      onTap: () => onTap(),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          border: Border.all(color: Colors.black26, width: 1.5),
        ),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 80,
              child: Center(
                child: Icon(
                  opcMenu.icono,
                  size: 40,
                  color: Colors.blueGrey,
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  AutoSizeText(
                    opcMenu.titulo,
                    style: Theme.of(context).textTheme.subtitle1,
                    minFontSize: 13,
                    maxLines: 1,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 60,
              child: Center(
                child: Icon(
                  Icons.chevron_right_rounded,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
