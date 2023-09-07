import 'package:circlesync/core/utils/color_palette.dart';
import 'package:flutter/material.dart';

class AppThemeData {

  static ThemeData lightTheme = ThemeData(
    primarySwatch: ColorsPallete.primarySwatch,
    scaffoldBackgroundColor: ColorsPallete.lightThemeScaffoldBackGroundColor,
    brightness: Brightness.light,
  );
  static ThemeData darkTheme = ThemeData(
    primarySwatch: ColorsPallete.primarySwatch,
    scaffoldBackgroundColor: ColorsPallete.darkThemeScaffoldBackGroundColor,
    brightness: Brightness.dark,
  );
}
