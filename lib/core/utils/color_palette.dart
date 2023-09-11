import 'package:flutter/material.dart';

class ColorsPallete {
  static MaterialColor primarySwatch = PrimarySwatchPallete.primarySwatch;
  static Color lightThemeScaffoldBackGroundColor = const Color(0xffF5F5F5);
  static Color darkThemeScaffoldBackGroundColor = const Color(0xff131620);
  static Color textSecondaryColor = const Color(0xff707070);
  static Color lightGray = const Color.fromARGB(255, 236, 235, 235);
}

class PrimarySwatchPallete {
  static const MaterialColor primarySwatch = MaterialColor(
    0xff0b76e9,
    <int, Color>{
      50: Color(0xffcfe5fd), //10%
      100: Color(0xffaad1fb), //20%
      200: Color(0xff84bdf9), //30%
      300: Color(0xff84bdf9), //40%
      400: Color(0xff5fa8f7), //50%
      500: Color(0xff1480f4), //60%
      600: Color(0xff0b76e9), //70%
      700: Color(0xff0a6dd6), //80%
      800: Color(0xff085ab1), //90%
      900: Color(0xff07478b), //1000%
    },
  );
}
