import 'package:circlesync/core/utils/size_config.dart';
import 'package:circlesync/features/auth/presentaion/signup_with_email.dart/views/widgets/already_have_account.dart';
import 'package:circlesync/features/auth/presentaion/signup_with_email.dart/views/widgets/continue_button.dart';
import 'package:circlesync/features/auth/presentaion/signup_with_email.dart/views/widgets/form.dart';
import 'package:circlesync/features/auth/presentaion/signup_with_email.dart/views/widgets/go_back_icon.dart';
import 'package:circlesync/features/auth/presentaion/signup_with_email.dart/views/widgets/main_title.dart';
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
              height: SizeConfig.defaultSize! * 2.5,
            ),
            const GoBackIcon(),
            SizedBox(
              height: SizeConfig.defaultSize! * 4,
            ),
            const MainTitle(),
            SizedBox(
              height: SizeConfig.defaultSize! * 2,
            ),
            SignUpWithEmailForm(
                obscurePassword: obscurePassword,
                obscureConfirmPassword:
                    obscureConfirmPassword), // all screen text fields

            SizedBox(
              height: SizeConfig.defaultSize! * 4,
            ),
            const ContinueButton(),
            const AlreadyHaveAnAccount(),
            SizedBox(
              height: SizeConfig.defaultSize! * 3,
            ),
          ],
        ),
      ),
    );
  }
}

