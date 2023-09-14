import 'package:circlesync/core/utils/functions/get_text_style.dart';
import 'package:circlesync/generated/l10n.dart';
import 'package:flutter/material.dart';

class DividerWithTextWidget extends StatelessWidget {
  const DividerWithTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Colors.black.withOpacity(0.3),
            thickness: 1.3,
            indent: 25,
            endIndent: 12,
          ),
        ),
        Text(
          S.of(context).ChooseSignUpMethodViewOr,
          style: getTextStyle(
              fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        Expanded(
          child: Divider(
            color: Colors.black.withOpacity(0.3),
            thickness: 1.3,
            indent: 12,
            endIndent: 25,
          ),
        ),
      ],
    );
  }
}
