import 'package:circlesync/core/utils/color_palette.dart';
import 'package:circlesync/core/utils/functions/get_text_style.dart';
import 'package:circlesync/generated/l10n.dart';
import 'package:flutter/material.dart';

class LoginForgotMyPassword extends StatelessWidget {
  const LoginForgotMyPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Text(
        S.of(context).LoginViewForgotMyPassword,
        style: getTextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w700,
          color: ColorsPallete.primarySwatch,
        ),
      ),
    );
  }
}
