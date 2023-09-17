import 'package:circlesync/core/utils/color_palette.dart';
import 'package:circlesync/core/widgets/custom_button.dart';
import 'package:circlesync/generated/l10n.dart';
import 'package:flutter/material.dart';

class LoginContinueButton extends StatelessWidget {
  const LoginContinueButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      cardName: S.of(context).SignUpWithEmailOrPhoneViewContinue,
      onTap: () {
        
      },
      textColor: Colors.white,
      backGroundColor: ColorsPallete.primarySwatch,
    );
  }
}
