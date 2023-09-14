import 'package:circlesync/core/widgets/custom_text_field.dart';
import 'package:circlesync/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField(
      {super.key, required this.obscureText, required this.passwordController});
  final bool obscureText;
  final TextEditingController passwordController;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  late bool _obscureText;
  late TextEditingController _passwordController;

  @override
  void initState() {
    _obscureText = widget.obscureText;
    _passwordController = widget.passwordController;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      onchanged: (p0) {},
      controller: _passwordController,
      hintText: S.of(context).SignUpWithEmailViewPassword,
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
