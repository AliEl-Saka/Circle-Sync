import 'package:circlesync/core/utils/app_assets.dart';
import 'package:circlesync/core/utils/size_config.dart';
import 'package:circlesync/core/widgets/auth_views_padding.dart';
import 'package:circlesync/features/auth/presentaion/choose_signup_method/views/widget/choose_signup_method_already_have_account.dart';
import 'package:circlesync/features/auth/presentaion/choose_signup_method/views/widget/choose_signup_method_sub_title.dart';
import 'package:circlesync/features/auth/presentaion/choose_signup_method/views/widget/divider_with_text.dart';
import 'package:circlesync/features/auth/presentaion/choose_signup_method/views/widget/social_media_cards.dart';
import 'package:circlesync/features/auth/presentaion/choose_signup_method/views/widget/choose_signup_method_title.dart';
import 'package:flutter/material.dart';

class ChooseSignUpViewBody extends StatelessWidget {
  const ChooseSignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthViewsPadding(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: SizeConfig.defaultSize! * 6,
            ),
            Image.asset(
              AppAssets.appLogo,
              height: SizeConfig.defaultSize! * 18,
            ),
            const SizedBox(
              height: 10,
            ),
            const ChooseSignUpMethodTitle(),
            const SizedBox(
              height: 4,
            ),
            const ChooseSignUpMethodSubTitle(),
            const SizedBox(
              height: 16,
            ),
            const FaceBookButton(), //sign up with facebook
            const GmailButton(), //sign up with gmail
            const SizedBox(
              height: 16,
            ),
            const DividerWithTextWidget(),
            const ContinueWithEmailButton(), //sign up with email
            const ContinueWithPhoneButton(), //sign up with phone
            const ChooseSignupMethodAlreadyHaveAnAccount(),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
