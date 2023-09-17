import 'package:circlesync/features/auth/presentaion/login/views/widgets/login_view_body.dart';
import 'package:flutter/material.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: LogInViewBody(),
    ));
  }
}
