import 'package:circlesync/core/utils/app_router.dart';
import 'package:circlesync/core/utils/prefs_keys.dart';
import 'package:circlesync/features/spalsh/presentaion/views/widgets/scaling_app_logo.dart';
import 'package:circlesync/features/spalsh/presentaion/views/widgets/sliding_app_name.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      () async {
        bool hasSeenOnBoarding = await hasSeenOnboarding();
        if (!mounted) return;
        Navigator.pushReplacementNamed(
            context,
            hasSeenOnBoarding
                ? AppRoutes.chooseSignUpMethodView
                : AppRoutes.onBoardingView);
      },
    );
  }

  Future<bool> hasSeenOnboarding() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(PrefsKeys.onBoardingKey) ?? false;
  }
}
