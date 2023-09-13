// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:circlesync/features/auth/presentaion/signup_with_email.dart/views/widgets/confirm_password_text_field.dart';
import 'package:circlesync/features/auth/presentaion/signup_with_email.dart/views/widgets/email_text_field.dart';
import 'package:circlesync/features/auth/presentaion/signup_with_email.dart/views/widgets/name_text_field.dart';
import 'package:circlesync/features/auth/presentaion/signup_with_email.dart/views/widgets/password_text_field.dart';

class SignUpWithEmailForm extends StatelessWidget {
  const SignUpWithEmailForm({
    Key? key,
    required this.obscurePassword,
    required this.obscureConfirmPassword,
  }) : super(key: key);
  final bool obscurePassword;
  final bool obscureConfirmPassword;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const NameTextField(),
        const EmailTextField(),
        PasswordTextField(obscureText: obscurePassword),
        ConfirmPasswordTextField(obsucreText: obscureConfirmPassword)
      ],
    );
  }
}
