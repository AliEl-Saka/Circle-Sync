// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'package:circlesync/core/utils/functions/is_arabic.dart';

class CustomLinearIndicator extends StatelessWidget {
  const CustomLinearIndicator({
    Key? key,
    required this.indicatorPercent,
    required this.currentColor,
  }) : super(key: key);
  final double indicatorPercent;
  final Color currentColor;

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      lineHeight: 10,
      barRadius: const Radius.circular(8),
      animation: true,
      isRTL: isArabic() ? true : false,
      animationDuration: 1200,
      percent: indicatorPercent,
      progressColor: currentColor,
      backgroundColor: Colors.black26,
      animateFromLastPercent: true,
    );
  }
}
