import 'package:circlesync/core/utils/color_palette.dart';
import 'package:circlesync/core/widgets/two_texts_in_one_row.dart';
import 'package:circlesync/generated/l10n.dart';
import 'package:flutter/material.dart';

class CodeWillSendIn extends StatelessWidget {
  const CodeWillSendIn({super.key, required this.sec});
  final int sec;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TwoTextsInOneRow(
        mainAxisAlignment: MainAxisAlignment.center,
        firstText: S.of(context).OtpVerificationCodeSend,
        firstTextColor: Colors.black,
        secondText: ' 00:$sec',
        secondTextColor: ColorsPallete.primarySwatch,
        customfontSize: 26,
      ),
    );
  }
}
