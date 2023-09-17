import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:circlesync/core/utils/functions/get_text_style.dart';

class TwoTextsInOneRow extends StatelessWidget {
  const TwoTextsInOneRow(
      {Key? key,
      required this.firstText,
      required this.firstTextColor,
      required this.secondText,
      required this.secondTextColor,
      required this.customfontSize,
      required this.mainAxisAlignment,
      this.onTap,})
      : super(key: key);
  final String firstText;
  final Color firstTextColor;
  final String secondText;
  final Color secondTextColor;
  final double customfontSize;
  final MainAxisAlignment mainAxisAlignment;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 6,
        ),
        Row(
          mainAxisAlignment: mainAxisAlignment,
          children: [
            AutoSizeText(
              firstText,
              maxLines: 1,
              style: getTextStyle(
                  fontSize: customfontSize,
                  fontWeight: FontWeight.w500,
                  color: firstTextColor),
            ),
            GestureDetector(
              onTap: onTap,
              child: AutoSizeText(
                secondText,
                maxLines: 1,
                style: getTextStyle(
                    fontSize: customfontSize,
                    fontWeight: FontWeight.w700,
                    color: secondTextColor),
              ),
            )
          ],
        ),
      ],
    );
  }
}
