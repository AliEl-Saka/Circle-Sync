import 'package:auto_size_text/auto_size_text.dart';
import 'package:circlesync/core/utils/app_assets.dart';
import 'package:circlesync/core/utils/color_palette.dart';
import 'package:circlesync/core/utils/functions/get_text_style.dart';
import 'package:circlesync/core/utils/size_config.dart';
import 'package:circlesync/core/widgets/two_texts_in_one_row.dart';
import 'package:circlesync/features/auth/presentaion/choose_signup_method.dart/views/widget/divider_with_text.dart';
import 'package:circlesync/features/auth/presentaion/choose_signup_method.dart/views/widget/social_media_cards.dart';
import 'package:circlesync/features/auth/presentaion/choose_signup_method.dart/views/widget/welcome_to_circle_sync.dart';
import 'package:circlesync/generated/l10n.dart';
import 'package:flutter/material.dart';

class ChooseSignUpViewBody extends StatelessWidget {
  const ChooseSignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize! * 3),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: SizeConfig.defaultSize! * 10,
            ),
            Image.asset(
              AppAssets.appLogo,
              height: SizeConfig.defaultSize! * 18,
            ),
            const SizedBox(
              height: 10,
            ),
            const WelcomeToCicleSync(),
            const SizedBox(
              height: 4,
            ),
            AutoSizeText(
              S.of(context).ChooseSignUpMethodViewSubTitle,
              maxLines: 3,
              style: getTextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: ColorsPallete.darkGray),
              textAlign: TextAlign.center,
            ),
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
            TwoTextsInOneRow(
                firstText:
                    S.of(context).ChooseSignUpMethodViewAlradyHaveAccount,
                firstTextColor: Colors.black,
                secondText: S.of(context).ChooseSignUpMethodViewLogIn,
                secondTextColor: ColorsPallete.primarySwatch),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
