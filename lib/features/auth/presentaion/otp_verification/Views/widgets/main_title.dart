

import 'package:auto_size_text/auto_size_text.dart';
import 'package:circlesync/core/utils/color_palette.dart';
import 'package:circlesync/core/utils/functions/get_text_style.dart';
import 'package:circlesync/core/utils/functions/is_arabic.dart';
import 'package:circlesync/core/widgets/auth_views_padding.dart';
import 'package:circlesync/generated/l10n.dart';
import 'package:flutter/material.dart';

class OtpVerificationMainTitle extends StatelessWidget {
  const OtpVerificationMainTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AuthViewsPadding(
      child: Align(
        alignment: isArabic() ? Alignment.centerRight : Alignment.centerLeft,
        child: AutoSizeText(
          S.of(context).OtpVerificationHasBeenSentTo,
          maxLines: 1,
          style: getTextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: ColorsPallete.darkGray),
        ),
      ),
    );
  }
}
