import 'package:flutter/material.dart';

import 'main_colors.dart';

ThemeData themeData = ThemeData(
  appBarTheme: AppBarTheme(
    backgroundColor: primary,
    centerTitle: true,
    elevation: 10,
    titleTextStyle: TextStyle(
      fontSize: 23,
      color: blanco,
      fontWeight: FontWeight.w700,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      minimumSize: MaterialStateProperty.all<Size>(
        const Size(88, 50), // Cambiar el tamaño del botón aquí (ancho, alto)
      ),
      backgroundColor: MaterialStateProperty.resolveWith<Color?>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return dark; // Color cuando el botón está presionado
          } else if (states.contains(MaterialState.disabled)) {
            return caption; // Color cuando el botón está deshabilitado
          }
          return primary; // Color predeterminado
        },
      ),
      textStyle: MaterialStateProperty.resolveWith<TextStyle?>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return TextStyle(
              color: blanco,
              fontWeight: FontWeight.w600,
              letterSpacing: 2.0,
              fontSize: 16,
            ); // Estilo de texto cuando el botón está presionado
          } else if (states.contains(MaterialState.disabled)) {
            return TextStyle(
              color: negro,
              fontWeight: FontWeight.w600,
              letterSpacing: 2.0,
              fontSize: 16,
            ); // Estilo de texto cuando el botón está deshabilitado
          }
          return TextStyle(
            color: blanco,
            fontWeight: FontWeight.w600,
            letterSpacing: 2.0,
            fontSize: 16,
          ); // Estilo de texto predeterminado
        },
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    isDense: true,
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: focusColor, width: 2.0),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: enabledColor, width: 2.0),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: errorColor, width: 2.0)
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: errorColor, width: 2.0)
    ),
  ),
  buttonTheme: ButtonThemeData(
    // Establecer el estilo del botón aquí
    buttonColor: negative,
    disabledColor: caption,
    height: 80,
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
  ),
  textTheme: TextTheme(
    headline1: TextStyle(
      fontSize: 21,
      fontWeight: FontWeight.w700,
      color: darkPage,
    ),
    headline2: TextStyle(
      fontSize: 19,
      fontWeight: FontWeight.w700,
      color: darkPage,
    ),
    headline3: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w600,
      color: darkPage,
    ),
    headline4: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: darkPage,
    ),
    headline5: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w600,
      color: darkPage,
    ),
    subtitle1: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: dark,
    ),
    subtitle2: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: dark,
    ),
    caption: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: caption,
    ),
    bodyText1: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: bodyText,
    ),
    bodyText2: TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      color: bodyText,
    ),
    button: TextStyle(
      fontSize: 16,
      color: blanco,
      fontWeight: FontWeight.w400,
    ),
  ),
);
