import 'package:circlesync/core/utils/functions/get_text_style.dart';
import 'package:circlesync/generated/l10n.dart';
import 'package:flutter/material.dart';

class PasswordDialogBody extends StatelessWidget {
  const PasswordDialogBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).SignUpWithEmailOrPhoneViewPasswordDialogTitle,
          style: getTextStyle(
              fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          S.of(context).SignUpWithEmailOrPhoneViewPasswordDialogFirst,
          style: getTextStyle(
              fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        Text(
          S.of(context).SignUpWithEmailOrPhoneViewPasswordDialogSecond,
          style: getTextStyle(
              fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        Text(
          S.of(context).SignUpWithEmailOrPhoneViewPasswordDialogThird,
          style: getTextStyle(
              fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        Text(
          S.of(context).SignUpWithEmailOrPhoneViewPasswordDialogFourth,
          style: getTextStyle(
              fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ],
    );
  }
}
