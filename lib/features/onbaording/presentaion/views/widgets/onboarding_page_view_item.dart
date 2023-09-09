import 'package:auto_size_text/auto_size_text.dart';
import 'package:circlesync/core/utils/color_palette.dart';
import 'package:circlesync/core/utils/functions/get_text_style.dart';
import 'package:circlesync/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class OnBoardingPageViewItem extends StatelessWidget {
  const OnBoardingPageViewItem({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });
  final String image;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize! * 2),
      child: Column(
        children: [
          SizedBox(
            height: SizeConfig.defaultSize! * 15,
          ),
          Image.asset(image),
          SizedBox(
            height: SizeConfig.defaultSize! * 3,
          ),
          AutoSizeText(
            title,
            textAlign: TextAlign.center,
            maxLines: 1,
            style: getTextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w700,
                color: ColorsPallete.primarySwatch),
          ),
          const SizedBox(
            height: 8,
          ),
          AutoSizeText(
            subTitle,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: getTextStyle(
                fontSize: 28, fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ],
      ),
    );
  }
}