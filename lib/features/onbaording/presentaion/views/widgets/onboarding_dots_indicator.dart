import 'package:circlesync/core/utils/color_palette.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({super.key, required this.dotsPosition});
  final int? dotsPosition;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3,
      position: dotsPosition!.toInt(),
      decorator: DotsDecorator(
          spacing: const EdgeInsets.all(4),
          color: Colors.transparent,
          activeColor: ColorsPallete.primarySwatch,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(color: ColorsPallete.primarySwatch))),
    );
  }
}