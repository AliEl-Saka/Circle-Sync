import 'package:circlesync/features/auth/presentaion/signup_with_email/views/widgets/text_fields_widgets/confirm_password_text_field.dart';
import 'package:circlesync/features/auth/presentaion/signup_with_email/views/widgets/text_fields_widgets/email_text_field.dart';
import 'package:circlesync/features/auth/presentaion/signup_with_email/views/widgets/text_fields_widgets/name_text_field.dart';
import 'package:circlesync/features/auth/presentaion/signup_with_email/views/widgets/text_fields_widgets/password_text_field_with_linear_indicator.dart';
import 'package:flutter/material.dart';

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
        PasswordTextFieldWithLinearIndicator(obscureText: obscurePassword),
        ConfirmPasswordTextField(obsucreText: obscureConfirmPassword)
      ],
    );
  }
}
