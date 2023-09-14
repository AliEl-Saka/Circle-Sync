import 'package:circlesync/core/utils/color_palette.dart';
import 'package:circlesync/core/widgets/two_texts_in_one_row.dart';
import 'package:circlesync/generated/l10n.dart';
import 'package:flutter/material.dart';

class SignupWithEmailAlreadyHaveAnAccount extends StatelessWidget {
  const SignupWithEmailAlreadyHaveAnAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TwoTextsInOneRow(
      mainAxisAlignment: MainAxisAlignment.start,
      firstText: S.of(context).ChooseSignUpMethodViewAlradyHaveAccount,
      firstTextColor: Colors.black,
      secondText: S.of(context).ChooseSignUpMethodViewLogIn,
      secondTextColor: ColorsPallete.primarySwatch,
      customfontSize: 23,
    );
  }
}
