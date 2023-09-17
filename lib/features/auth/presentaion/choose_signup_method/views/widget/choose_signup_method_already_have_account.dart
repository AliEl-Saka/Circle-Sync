import 'package:circlesync/core/utils/app_router.dart';
import 'package:circlesync/core/utils/color_palette.dart';
import 'package:circlesync/core/widgets/two_texts_in_one_row.dart';
import 'package:circlesync/generated/l10n.dart';
import 'package:flutter/material.dart';

class ChooseSignupMethodAlreadyHaveAnAccount extends StatelessWidget {
  const ChooseSignupMethodAlreadyHaveAnAccount({
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
      onTap: () => Navigator.pushNamed(context, AppRoutes.logIn),
    );
  }
}
