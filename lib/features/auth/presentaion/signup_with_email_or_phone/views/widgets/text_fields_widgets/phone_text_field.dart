import 'package:circlesync/core/widgets/custom_text_field.dart';
import 'package:circlesync/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PhoneTextField extends StatelessWidget {
  const PhoneTextField
({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      //!
      controller: TextEditingController(),
              onchanged: (p0) {},
              hintText: S.of(context).SignUpWithEmailOrPhoneViewPhone,
              prefixIcon: const Icon(FontAwesomeIcons.phone),
              validator: (p0) {
                return null;
              },
            );
  }
}