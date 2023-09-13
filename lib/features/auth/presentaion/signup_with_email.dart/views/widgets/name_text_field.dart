import 'package:circlesync/core/widgets/custom_text_field.dart';
import 'package:circlesync/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NameTextField extends StatelessWidget {
  const NameTextField
({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
              onchanged: (p0) {},
              hintText: S.of(context).SignUpWithEmailViewName,
              prefixIcon: const Icon(FontAwesomeIcons.userLarge),
              validator: (p0) {
                return null;
              },
            );
  }
}