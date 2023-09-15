import 'package:circlesync/core/widgets/custom_text_field.dart';
import 'package:circlesync/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ConfirmPasswordTextField extends StatefulWidget {
  const ConfirmPasswordTextField({super.key, required this.obsucreText});
  final bool obsucreText;

  @override
  State<ConfirmPasswordTextField> createState() =>
      _ConfirmPasswordTextFieldState();
}

class _ConfirmPasswordTextFieldState extends State<ConfirmPasswordTextField> {
  late bool _obscureText;
  @override
  void initState() {
    _obscureText = widget.obsucreText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      //!
      controller: TextEditingController(),
      onchanged: (p0) {},
      hintText: S.of(context).SignUpWithEmailOrPhoneViewConfirmPassword,
      prefixIcon: const Icon(FontAwesomeIcons.lock),
      suffixIcon: GestureDetector(
        onTap: () {
          setState(() {
            _obscureText = !_obscureText;
          });
        },
        child: _obscureText
            ? const Icon(FontAwesomeIcons.eyeSlash)
            : const Icon(FontAwesomeIcons.eye),
      ),
      obscureText: _obscureText,
      validator: (p0) {
        return null;
      },
    );
  }
}
