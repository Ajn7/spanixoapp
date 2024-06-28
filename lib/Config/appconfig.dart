import 'package:flutter/material.dart';

class AppConfig {
  AppConfig._();

  static const appVersion = "0.9.23";
  static const Map<int, Color> colorTheme = {
    50: Color.fromRGBO(116, 66, 134, .1),
    100: Color.fromRGBO(116, 66, 134, .2),
    200: Color.fromRGBO(116, 66, 134, .3),
    300: Color.fromRGBO(116, 66, 134, .4),
    400: Color.fromRGBO(116, 66, 134, .5),
    500: Color.fromRGBO(116, 66, 134, .6),
    600: Color.fromRGBO(116, 66, 134, .7),
    700: Color.fromRGBO(116, 66, 134, .8),
    800: Color.fromRGBO(116, 66, 134, .9),
    900: Color.fromRGBO(116, 66, 134, 1),
  };

  //if main color theme is changed, make color change in main.dart
  /// Colors
  static const Color colorBasic100 = Color(0xFFF8F8FF);
  static const Color colorPrimary = Color(0xFF24685B);
  static const Color colorSuccess = Color(0xFF63BD99);

  static const Color gray = Color(0xffF2F2F2);
  static const Color background=Colors.white;
  static const Color blue=Color(0xff05AFEA);
  static const Color selectedBlue=Color(0xff9CE0F7);
  static const Color blueGray=Color(0xff55607C);
}
