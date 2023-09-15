import 'package:auto_size_text/auto_size_text.dart';
import 'package:circlesync/core/utils/color_palette.dart';
import 'package:circlesync/core/utils/functions/get_text_style.dart';
import 'package:circlesync/core/widgets/custom_text_field.dart';
import 'package:circlesync/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PhoneTextField extends StatelessWidget {
  const PhoneTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomTextField(
            readOnly: true,
            controller: TextEditingController(),
            onchanged: (p0) {},
            hintText: S.of(context).SignUpWithEmailOrPhoneViewPhone,
            prefixIcon: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: AutoSizeText("${gerereteCountryCode()} +20",
                    maxLines: 1,
                    style: getTextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff767676))),
              ),
            ),
            validator: (p0) {
              return null;
            },
          ),
        ),
        const SizedBox(
          width: 6,
        ),
        Expanded(
          flex: 3,
          child: CustomTextField(
            //!
            controller: TextEditingController(),
            onchanged: (p0) {},
            hintText: S.of(context).SignUpWithEmailOrPhoneViewPhone,
            prefixIcon: const Icon(FontAwesomeIcons.phone),
            validator: (p0) {
              return null;
            },
          ),
        ),
      ],
    );
  }
}

String gerereteCountryCode() {
  String conutryCode = 'eg';
  String flag = conutryCode.toUpperCase().replaceAllMapped(RegExp(r'[A-Z]'),
      (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397));
  return flag;
}
