import 'package:circlesync/core/utils/color_palette.dart';
import 'package:circlesync/core/utils/size_config.dart';
import 'package:circlesync/core/widgets/auth_views_padding.dart';
import 'package:circlesync/core/widgets/divider_with_text.dart';
import 'package:circlesync/core/widgets/go_back_icon.dart';
import 'package:circlesync/features/auth/presentaion/login/views/widgets/login_continue_button.dart';
import 'package:circlesync/features/auth/presentaion/login/views/widgets/login_dont_have_account.dart';
import 'package:circlesync/features/auth/presentaion/login/views/widgets/login_forgot_my_password.dart';
import 'package:circlesync/features/auth/presentaion/login/views/widgets/login_form.dart';
import 'package:circlesync/features/auth/presentaion/login/views/widgets/login_main_title.dart';
import 'package:circlesync/features/auth/presentaion/login/views/widgets/login_remember_me.dart';
import 'package:circlesync/features/auth/presentaion/login/views/widgets/login_with_icons.dart';
import 'package:circlesync/generated/l10n.dart';
import 'package:flutter/material.dart';

class LogInViewBody extends StatelessWidget {
  const LogInViewBody({super.key});

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
            const LoginMainTitle(),
            SizedBox(
              height: SizeConfig.defaultSize! * 2,
            ),
            const LoginForm(), // all screen text fields
            const LoginRememberMe(),
            SizedBox(
              height: SizeConfig.defaultSize! * 4,
            ),
            const LoginContinueButton(),
            const SizedBox(
              height: 6,
            ),
            const LoginForgotMyPassword(),
            const SizedBox(
              height: 32,
            ),
            DividerWithTextWidget(text: S.of(context).loginviewOrContinueWith),
            const SizedBox(
              height: 16,
            ),
            const LoginWIthIcons(),
            const SizedBox(
              height: 32,
            ),
            const LoginDontHaveAnAccount(),
            SizedBox(
              height: SizeConfig.defaultSize! * 3,
            ),
          ],
        ),
      ),
    );
  }
}
