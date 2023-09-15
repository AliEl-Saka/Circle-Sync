import 'package:circlesync/features/auth/presentaion/signup_with_email_or_phone/views/widgets/signup_with_phone_body.dart';
import 'package:flutter/material.dart';

class SignUpWithPhoneView extends StatelessWidget {
  const SignUpWithPhoneView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SignUpWithPhoneViewBody(),
      ),
    );
  }
}