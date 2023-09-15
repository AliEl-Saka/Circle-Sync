import 'package:circlesync/features/auth/presentaion/signup_with_email_or_phone/views/widgets/signup_with_email_body.dart';
import 'package:flutter/material.dart';

class SignUpWithEmailView extends StatelessWidget {
  const SignUpWithEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SignUpWithEmailViewBody(),
      ),
    );
  }
}
