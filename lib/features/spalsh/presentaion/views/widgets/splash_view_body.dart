import 'package:circlesync/core/widgets/page_transition.dart';
import 'package:circlesync/features/onbaording/presentaion/views/onboarding_view.dart';
import 'package:circlesync/features/spalsh/presentaion/views/widgets/scaling_app_logo.dart';
import 'package:circlesync/features/spalsh/presentaion/views/widgets/sliding_app_name.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    goToNextPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Stack(
        children: [
          Center(child: ScalingAppLogo()),
          Center(child: SlidingAppName()),
        ],
      ),
    );
  }

  void goToNextPage() {
    Future.delayed(
      const Duration(seconds: 4),
      () {
        Navigator.pushReplacement(
            context, PageTransition(const OnBoardingView()));
      },
    );
  }
}
