import 'package:auto_size_text/auto_size_text.dart';
import 'package:circlesync/core/utils/app_assets.dart';
import 'package:circlesync/core/utils/color_palette.dart';
import 'package:circlesync/core/utils/functions/get_text_style.dart';
import 'package:circlesync/core/utils/size_config.dart';
import 'package:circlesync/features/auth/presentaion/choose_signup_method.dart/views/widget/divider_with_text.dart';
import 'package:circlesync/features/auth/presentaion/choose_signup_method.dart/views/widget/social_cards.dart';
import 'package:circlesync/features/auth/presentaion/choose_signup_method.dart/views/widget/welcome_to_circle_sync.dart';
import 'package:circlesync/generated/l10n.dart';
import 'package:flutter/material.dart';

import 'widget/already_have_account.dart';

class ChooseSignUpMethodView extends StatelessWidget {
  const ChooseSignUpMethodView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignUpViewBody(),
    );
  }
}

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize! * 3),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: SizeConfig.defaultSize! * 8,
            ),
            Image.asset(
              AppAssets.appLogo,
              height: 200,
            ),
            const SizedBox(
              height: 10,
            ),
            const WelcomeToCicleSync(),
            const SizedBox(
              height: 4,
            ),
            AutoSizeText(
              S.of(context).SignUpViewSubTitle,
              maxLines: 3,
              style: getTextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: ColorsPallete.textSecondaryColor),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 32,
            ),
            SignUpWithSocialCard(
              cardIcon: AppAssets.signUpFaceBookIcon,
              cardName: S.of(context).SignUpViewFaceBookCard,
            ), //sign up with facebook
            SignUpWithSocialCard(
              cardIcon: AppAssets.signUpGmailIcon,
              cardName: S.of(context).SignUpViewGmailCard,
            ), //sign up with gmail
            const DividerWithTextWidget(), //or divider
            const SizedBox(
              height: 16,
            ),
            SignUpWithSocialCard(
              backGroundColor: ColorsPallete.primarySwatch,
              textColor: Colors.white,
              cardName: S.of(context).SignUpViewEmailCard,
            ), //sign up with email
            const AlreadyHaveAccount(),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
