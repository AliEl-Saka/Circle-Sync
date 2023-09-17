import 'package:circlesync/features/auth/presentaion/signup_with_email_or_phone/views/widgets/text_fields_widgets/confirm_password_text_field.dart';
import 'package:circlesync/features/auth/presentaion/signup_with_email_or_phone/views/widgets/text_fields_widgets/email_text_field.dart';
import 'package:circlesync/features/auth/presentaion/signup_with_email_or_phone/views/widgets/text_fields_widgets/name_text_field.dart';
import 'package:circlesync/features/auth/presentaion/signup_with_email_or_phone/views/widgets/text_fields_widgets/password_text_field_with_linear_indicator.dart';
import 'package:circlesync/features/auth/presentaion/signup_with_email_or_phone/views/widgets/text_fields_widgets/phone_text_field.dart';
import 'package:flutter/material.dart';

class SignUpWithEmailOrPhoneForm extends StatelessWidget {
  const SignUpWithEmailOrPhoneForm({
    Key? key,
    required this.obscurePassword,
    required this.obscureConfirmPassword,
    required this.isSignUpWithEmailView
  }) : super(key: key);
  final bool obscurePassword;
  final bool obscureConfirmPassword;
  final bool isSignUpWithEmailView;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const NameTextField(),
        isSignUpWithEmailView ? const EmailTextField() : const PhoneTextField(),
        PasswordTextFieldWithLinearIndicator(obscureText: obscurePassword),
        ConfirmPasswordTextField(obsucreText: obscureConfirmPassword)
      ],
    );
  }
}
