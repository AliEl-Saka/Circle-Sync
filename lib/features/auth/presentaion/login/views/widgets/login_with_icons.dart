import 'package:circlesync/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class LoginWIthIcons extends StatelessWidget {
  const LoginWIthIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ContainerWithSocialMediaIcons(icon: AppAssets.signUpFaceBookIcon),
        SizedBox(
          width: 16,
        ),
        ContainerWithSocialMediaIcons(icon: AppAssets.signUpGmailIcon),
      ],
    );
  }
}

class ContainerWithSocialMediaIcons extends StatelessWidget {
  const ContainerWithSocialMediaIcons({
    super.key,
    required this.icon,
  });

  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
        border: Border.all(
          color: Colors.black.withOpacity(0.3),
        ),
      ),
      child: Image.asset(icon),
    );
  }
}
