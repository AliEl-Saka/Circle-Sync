import 'package:circlesync/core/utils/color_palette.dart';
import 'package:circlesync/core/utils/size_config.dart';
import 'package:circlesync/core/widgets/auth_views_padding.dart';
import 'package:circlesync/features/auth/presentaion/signup_with_email_or_phone/views/widgets/signup_with_email_already_have_account.dart';
import 'package:circlesync/features/auth/presentaion/signup_with_email_or_phone/views/widgets/signup_continue_button.dart';
import 'package:circlesync/features/auth/presentaion/signup_with_email_or_phone/views/widgets/signup_form.dart';
import 'package:circlesync/core/widgets/go_back_icon.dart';
import 'package:circlesync/features/auth/presentaion/signup_with_email_or_phone/views/widgets/signup_main_title.dart';
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
    return AuthViewsPadding(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: SizeConfig.defaultSize! * 2.5,
            ),
            GoBackIcon(iconColor: ColorsPallete.darkGray),
            SizedBox(
              height: SizeConfig.defaultSize! * 4,
            ),
            const SignUpMainTitle(),
            SizedBox(
              height: SizeConfig.defaultSize! * 2,
            ),
            SignUpWithEmailOrPhoneForm(
                isSignUpWithEmailView: true,
                obscurePassword: obscurePassword,
                obscureConfirmPassword:
                    obscureConfirmPassword), // all screen text fields

            SizedBox(
              height: SizeConfig.defaultSize! * 4,
            ),
            const SignUpContinueButton(),
            const SignupWithEmailAlreadyHaveAnAccount(),
            SizedBox(
              height: SizeConfig.defaultSize! * 3,
            ),
          ],
        ),
      ),
    );
  }
}
