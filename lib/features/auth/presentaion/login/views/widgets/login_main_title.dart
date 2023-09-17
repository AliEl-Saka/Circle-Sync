import 'package:auto_size_text/auto_size_text.dart';
import 'package:circlesync/core/utils/functions/get_text_style.dart';
import 'package:circlesync/core/utils/functions/is_arabic.dart';
import 'package:circlesync/generated/l10n.dart';
import 'package:flutter/material.dart';

class LoginMainTitle extends StatelessWidget {
  const LoginMainTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isArabic() ? Alignment.centerRight : Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            S.of(context).LoginViewLoginToYour,
            style: getTextStyle(
                fontSize: 40, fontWeight: FontWeight.w700, color: Colors.black),
          ),
          AutoSizeText(
            S.of(context).LoginViewAccount,
            style: getTextStyle(
                fontSize: 40, fontWeight: FontWeight.w700, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
