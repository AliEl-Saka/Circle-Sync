import 'package:circlesync/features/auth/presentaion/otp_verification/Views/widgets/otp_verification_view_body.dart';
import 'package:flutter/material.dart';

class OtpVerificationView extends StatelessWidget {
  const OtpVerificationView({super.key, required this.isOtpForEmail});
  final bool isOtpForEmail;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: OtpVerificationViewBody(isOtpForEmail: isOtpForEmail),
    ));
  }
}
