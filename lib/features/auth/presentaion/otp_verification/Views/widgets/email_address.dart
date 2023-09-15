import 'package:auto_size_text/auto_size_text.dart';
import 'package:circlesync/core/utils/functions/get_text_style.dart';
import 'package:circlesync/core/utils/functions/is_arabic.dart';
import 'package:circlesync/core/widgets/auth_views_padding.dart';
import 'package:flutter/material.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return AuthViewsPadding(
      child: Align(
        alignment: isArabic() ? Alignment.centerRight : Alignment.centerLeft,
        child: AutoSizeText(
          text,
          maxLines: 1,
          style: getTextStyle(
              fontSize: 28, fontWeight: FontWeight.w700, color: Colors.black),
        ),
      ),
    );
  }
}
