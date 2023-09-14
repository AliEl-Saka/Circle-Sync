import 'package:auto_size_text/auto_size_text.dart';
import 'package:circlesync/core/utils/color_palette.dart';
import 'package:circlesync/core/utils/functions/get_text_style.dart';
import 'package:circlesync/generated/l10n.dart';
import 'package:flutter/material.dart';

class ChooseSignUpMethodTitle extends StatelessWidget {
  const ChooseSignUpMethodTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AutoSizeText.rich(
      textAlign: TextAlign.center,
      TextSpan(
        children: [
          TextSpan(
            text: S.of(context).ChooseSignUpMethodViewTitleOne,
            style: getTextStyle(
                fontSize: 34, fontWeight: FontWeight.w700, color: Colors.black),
          ),
          TextSpan(
            text: S.of(context).ChooseSignUpMethodViewTitleTwo,
            style: getTextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w700,
                color: ColorsPallete.primarySwatch),
          ),
        ],
      ),
    );
  }
}
