import 'package:circlesync/features/auth/presentaion/login/views/widgets/text_fields_widgets/email_phone_text_field.dart';
import 'package:circlesync/features/auth/presentaion/login/views/widgets/text_fields_widgets/password_text_field.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,

  }) : super(key: key);
 final bool obscurePassword = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const EmailOrPhoneTextField(),
        LoginPasswordTextField(
            obscureText: obscurePassword,
            passwordController: TextEditingController())
      ],
    );
  }
}
