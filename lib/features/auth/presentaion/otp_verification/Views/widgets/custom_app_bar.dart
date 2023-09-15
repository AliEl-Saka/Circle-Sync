import 'package:circlesync/core/utils/functions/get_text_style.dart';
import 'package:circlesync/core/utils/size_config.dart';
import 'package:circlesync/core/widgets/auth_views_padding.dart';
import 'package:circlesync/features/auth/presentaion/signup_with_email_or_phone/views/widgets/go_back_icon.dart';
import 'package:circlesync/generated/l10n.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.defaultSize! * 2,
        ),
        AuthViewsPadding(
          child: Row(
            children: [
              const GoBackIcon(iconColor: Colors.black),
              const SizedBox(
                width: 12,
              ),
              Text(
                S.of(context).OtpVerification,
                style: getTextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 1.5,
        )
      ],
    );
  }
}
