import 'package:circlesync/core/widgets/custom_text_field.dart';
import 'package:circlesync/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EmailOrPhoneTextField extends StatelessWidget {
  const EmailOrPhoneTextField
({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      //!
      controller: TextEditingController(),
              onchanged: (p0) {},
              hintText: S.of(context).LoginViewEmailOrPhoneTextField,
              prefixIcon: const Icon(FontAwesomeIcons.userLarge),
              validator: (p0) {
                return null;
              },
            );
  }
}