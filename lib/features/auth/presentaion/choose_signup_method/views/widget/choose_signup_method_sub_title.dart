import 'package:auto_size_text/auto_size_text.dart';
import 'package:circlesync/core/utils/color_palette.dart';
import 'package:circlesync/core/utils/functions/get_text_style.dart';
import 'package:circlesync/generated/l10n.dart';
import 'package:flutter/material.dart';

class ChooseSignUpMethodSubTitle extends StatelessWidget {
  const ChooseSignUpMethodSubTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      S.of(context).ChooseSignUpMethodViewSubTitle,
      maxLines: 3,
      style: getTextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w500,
          color: ColorsPallete.darkGray),
      textAlign: TextAlign.center,
    );
  }
}
