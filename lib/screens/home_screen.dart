import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../widgets/home/opciones_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _bottomNavIndex = 0;
  AutoSizeGroup autoSizeGroup = AutoSizeGroup();

  final List<Map<String, dynamic>> bottomNavigationList =
      <Map<String, dynamic>>[
    <String, dynamic>{'icono': Icons.home_outlined, 'titulo': 'Home'},
    <String, dynamic>{
      'icono': Icons.settings_outlined,
      'titulo': 'Configuración',
    },
  ];

  String _obtenerTitulo() {
    return bottomNavigationList[_bottomNavIndex]['titulo'].toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_obtenerTitulo()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Visibility(
                visible: _bottomNavIndex == 0,
                child: const OpcionesMenu(),
              ),
            ),
            Expanded(
              child: Visibility(
                visible: _bottomNavIndex == 1,
                child: const Text('Soy configuraciones'),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: bottomNavigationList.length,
        activeIndex: _bottomNavIndex,
        backgroundColor: Colors.black54,
        onTap: (int index) => setState(() => _bottomNavIndex = index),
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        tabBuilder: (int index, bool isActive) {
          final Color color = isActive ? Colors.white : Colors.grey.shade500;
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    bottomNavigationList[index]['icono'],
                    size: 24,
                    color: color,
                  ),
                  const SizedBox(height: 4),
                  Visibility(
                    visible: isActive,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 9),
                      child: AutoSizeText(
                        bottomNavigationList[index]['titulo'],
                        maxLines: 1,
                        style: TextStyle(color: color),
                        group: autoSizeGroup,
                      ),
                    ),
                  )
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
