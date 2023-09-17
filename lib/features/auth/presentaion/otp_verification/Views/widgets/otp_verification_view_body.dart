import 'dart:async';
import 'package:circlesync/core/utils/color_palette.dart';
import 'package:circlesync/core/utils/size_config.dart';
import 'package:circlesync/core/widgets/auth_views_padding.dart';
import 'package:circlesync/core/widgets/custom_button.dart';
import 'package:circlesync/features/auth/presentaion/otp_verification/Views/widgets/custom_app_bar.dart';
import 'package:circlesync/features/auth/presentaion/otp_verification/Views/widgets/email_address.dart';
import 'package:circlesync/features/auth/presentaion/otp_verification/Views/widgets/main_title.dart';
import 'package:circlesync/features/auth/presentaion/otp_verification/Views/widgets/pin_code_text_fields.dart';
import 'package:circlesync/features/auth/presentaion/otp_verification/Views/widgets/code_will_send_in.dart';
import 'package:circlesync/features/auth/presentaion/otp_verification/Views/widgets/request_resend_code.dart';
import 'package:circlesync/generated/l10n.dart';
import 'package:flutter/material.dart';

class OtpVerificationViewBody extends StatefulWidget {
  const OtpVerificationViewBody({super.key});

  @override
  State<OtpVerificationViewBody> createState() =>
      _OtpVerificationViewBodyState();
}

class _OtpVerificationViewBodyState extends State<OtpVerificationViewBody> {
  int sec = 21;
  Timer? timer;

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomAppBar(),
          SizedBox(
            height: SizeConfig.defaultSize! * 5,
          ),
          const OtpVerificationMainTitle(),
          const OtpVerificationEmailAddress(
              emailAddress: 'example@example.com'),
          SizedBox(
            height: SizeConfig.defaultSize! * 6,
          ),
          const CustomPinCodeTextField(),
          AuthViewsPadding(
            child: CustomButton(
              cardName: S.of(context).OtpVerificationRequestRegister,
              onTap: () {},
              textColor: Colors.white,
              backGroundColor: ColorsPallete.primarySwatch,
            ),
          ),
          sec != 0 ? CodeWillSendIn(sec: sec) : const RequestResendCode()
        ],
      ),
    );
  }

  void startTimer() {
    const onsec = Duration(seconds: 1);
    timer = Timer.periodic(onsec, (time) {
      if (sec == 0) {
        timer!.cancel();
      } else if (!mounted) {
        timer!.cancel();
      } else {
        setState(() {
          sec--;
        });
      }
    });
  }
}
