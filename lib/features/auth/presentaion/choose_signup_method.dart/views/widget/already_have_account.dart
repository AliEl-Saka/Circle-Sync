import 'package:auto_size_text/auto_size_text.dart';
import 'package:circlesync/core/utils/color_palette.dart';
import 'package:circlesync/core/utils/functions/get_text_style.dart';
import 'package:circlesync/generated/l10n.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AutoSizeText(
          S.of(context).SignUpViewAlradyHaveAccount,
          maxLines: 1,
          style: getTextStyle(
              fontSize: 22, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        AutoSizeText(
          S.of(context).SignUpViewLogIn,
          maxLines: 1,
          style: getTextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: ColorsPallete.primarySwatch),
        )
      ],
    );
  }
}
