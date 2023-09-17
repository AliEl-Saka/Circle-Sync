import 'package:circlesync/core/utils/color_palette.dart';
import 'package:circlesync/core/widgets/two_texts_in_one_row.dart';
import 'package:circlesync/generated/l10n.dart';
import 'package:flutter/material.dart';

class RequestResendCode extends StatelessWidget {
  const RequestResendCode({super.key});

  @override
  Widget build(BuildContext context) {
    return TwoTextsInOneRow(
      mainAxisAlignment: MainAxisAlignment.center,
      firstText: S.of(context).OtpVerificationDidnotReceiveCode,
      firstTextColor: Colors.black,
      secondText: S.of(context).OtpVerificationRequestResend,
      secondTextColor: ColorsPallete.primarySwatch,
      customfontSize: 23,
    );
  }
}
