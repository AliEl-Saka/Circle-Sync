import 'package:circlesync/core/utils/color_palette.dart';
import 'package:circlesync/core/utils/size_config.dart';
import 'package:circlesync/core/widgets/two_texts_in_one_row.dart';
import 'package:circlesync/features/auth/presentaion/signup_with_email.dart/views/widgets/continue_button.dart';
import 'package:circlesync/features/auth/presentaion/signup_with_email.dart/views/widgets/form.dart';
import 'package:circlesync/features/auth/presentaion/signup_with_email.dart/views/widgets/go_back_icon.dart';
import 'package:circlesync/features/auth/presentaion/signup_with_email.dart/views/widgets/main_title.dart';
import 'package:circlesync/generated/l10n.dart';
import 'package:flutter/material.dart';

class SignUpWithEmailViewBody extends StatefulWidget {
  const SignUpWithEmailViewBody({super.key});

  @override
  State<SignUpWithEmailViewBody> createState() =>
      _SignUpWithEmailViewBodyState();
}

class _SignUpWithEmailViewBodyState extends State<SignUpWithEmailViewBody> {
  bool obscurePassword = false;
  bool obscureConfirmPassword = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize! * 3),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: SizeConfig.defaultSize! * 5,
            ),
            const GoBackIcon(),
            SizedBox(
              height: SizeConfig.defaultSize! * 7,
            ),
            const MainTitle(),
            SizedBox(
              height: SizeConfig.defaultSize! * 5,
            ),
            SignUpWithEmailForm(
                obscurePassword: obscurePassword,
                obscureConfirmPassword:
                    obscureConfirmPassword), // all screen text fields
            SizedBox(
              height: SizeConfig.defaultSize! * 3,
            ),
            const ContinueButton(),
            TwoTextsInOneRow(
                firstText:
                    S.of(context).ChooseSignUpMethodViewAlradyHaveAccount,
                firstTextColor: Colors.black,
                secondText: S.of(context).ChooseSignUpMethodViewLogIn,
                secondTextColor: ColorsPallete.primarySwatch)
          ],
        ),
      ),
    );
  }
}


