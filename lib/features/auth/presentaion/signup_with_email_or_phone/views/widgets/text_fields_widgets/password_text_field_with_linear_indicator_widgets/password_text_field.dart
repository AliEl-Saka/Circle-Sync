import 'package:circlesync/core/widgets/custom_text_field.dart';
import 'package:circlesync/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpPasswordTextField extends StatefulWidget {
  const SignUpPasswordTextField(
      {super.key, required this.obscureText, required this.passwordController});
  final bool obscureText;
  final TextEditingController passwordController;

  @override
  State<SignUpPasswordTextField> createState() =>
      _SignUpPasswordTextFieldState();
}

class _SignUpPasswordTextFieldState extends State<SignUpPasswordTextField> {
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
      hintText: S.of(context).SignUpWithEmailOrPhoneViewPassword,
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
