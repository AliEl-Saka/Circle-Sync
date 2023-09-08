
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


TextStyle getTextStyle(
    {required double fontSize,
    required FontWeight fontWeight,
    required Color color}) {
  double fontFamilySize =
      Intl.getCurrentLocale() == 'ar' ? fontSize : fontSize - 2;

  return Intl.getCurrentLocale() == 'ar'
      ? TextStyle(
          fontFamily: 'Somar',
          fontSize: fontFamilySize,
          fontWeight: fontWeight,
          color: color)
      : TextStyle(
          fontFamily: 'Nunito',
          fontSize: fontFamilySize,
          fontWeight: fontWeight,
          color: color);
}
