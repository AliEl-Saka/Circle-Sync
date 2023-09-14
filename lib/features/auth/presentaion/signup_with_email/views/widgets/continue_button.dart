import 'package:circlesync/core/utils/app_router.dart';
import 'package:circlesync/core/utils/color_palette.dart';
import 'package:circlesync/core/widgets/custom_button.dart';
import 'package:circlesync/generated/l10n.dart';
import 'package:flutter/material.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      cardName: S.of(context).SignUpWithEmailViewContinue,
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.otpVerification);
      },
      textColor: Colors.white,
      backGroundColor: ColorsPallete.primarySwatch,
    );
  }
}