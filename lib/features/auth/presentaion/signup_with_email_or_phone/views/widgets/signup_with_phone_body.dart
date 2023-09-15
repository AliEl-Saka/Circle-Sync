import 'package:circlesync/core/utils/color_palette.dart';
import 'package:circlesync/core/utils/size_config.dart';
import 'package:circlesync/core/widgets/auth_views_padding.dart';
import 'package:circlesync/features/auth/presentaion/signup_with_email_or_phone/views/widgets/signup_with_email_already_have_account.dart';
import 'package:circlesync/features/auth/presentaion/signup_with_email_or_phone/views/widgets/continue_button.dart';
import 'package:circlesync/features/auth/presentaion/signup_with_email_or_phone/views/widgets/form.dart';
import 'package:circlesync/features/auth/presentaion/signup_with_email_or_phone/views/widgets/go_back_icon.dart';
import 'package:circlesync/features/auth/presentaion/signup_with_email_or_phone/views/widgets/main_title.dart';
import 'package:flutter/material.dart';

class SignUpWithPhoneViewBody extends StatefulWidget {
  const SignUpWithPhoneViewBody({super.key});

  @override
  State<SignUpWithPhoneViewBody> createState() =>
      _SignUpWithPhoneViewBodyState();
}

class _SignUpWithPhoneViewBodyState extends State<SignUpWithPhoneViewBody> {
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
            const MainTitle(),
            SizedBox(
              height: SizeConfig.defaultSize! * 2,
            ),
            SignUpWithEmailOrPhoneForm(
                isSignUpWithEmailView: false,
                obscurePassword: obscurePassword,
                obscureConfirmPassword:
                    obscureConfirmPassword), // all screen text fields

            SizedBox(
              height: SizeConfig.defaultSize! * 4,
            ),
            const ContinueButton(),
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
