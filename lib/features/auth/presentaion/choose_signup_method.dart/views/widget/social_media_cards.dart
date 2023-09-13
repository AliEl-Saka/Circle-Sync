import 'package:circlesync/core/utils/app_assets.dart';
import 'package:circlesync/core/utils/color_palette.dart';
import 'package:circlesync/core/widgets/custom_button.dart';
import 'package:circlesync/generated/l10n.dart';
import 'package:flutter/material.dart';

class ContinueWithEmailButton extends StatelessWidget {
  const ContinueWithEmailButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      backGroundColor: ColorsPallete.primarySwatch,
      textColor: Colors.white,
      cardName: S.of(context).ChooseSignUpMethodViewEmailCard,
      onTap: () {
        
      },
    );
  }
}

class ContinueWithPhoneButton extends StatelessWidget {
  const ContinueWithPhoneButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      backGroundColor: ColorsPallete.primarySwatch,
      textColor: Colors.white,
      cardName: S.of(context).ChooseSignUpMethodViewPhoneCard,
      onTap: () {},
    );
  }
}

class GmailButton extends StatelessWidget {
  const GmailButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      cardIcon: AppAssets.signUpGmailIcon,
      cardName: S.of(context).ChooseSignUpMethodViewGmailCard,
      onTap: () {},
    );
  }
}

class FaceBookButton extends StatelessWidget {
  const FaceBookButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      cardIcon: AppAssets.signUpFaceBookIcon,
      cardName: S.of(context).ChooseSignUpMethodViewFaceBookCard,
      onTap: () {},
    );
  }
}
