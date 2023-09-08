import 'package:circlesync/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class ScalingAppLogo extends StatefulWidget {
  const ScalingAppLogo({super.key});

  @override
  State<ScalingAppLogo> createState() => _ScalingAppLogoState();
}

class _ScalingAppLogoState extends State<ScalingAppLogo>
    with SingleTickerProviderStateMixin {
  late AnimationController scalingController;
  late Animation<double> scalingAnimation;
  late Animation<double> scalingAnimationOpacity;

  @override
  void initState() {
    intializeAnimation();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    scalingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: scalingController,
        builder: (context, _) {
          return ScaleTransition(
              scale: scalingAnimation,
              child: Opacity(
                opacity: scalingAnimationOpacity.value,
                child: Image.asset(
                  AppAssets.appLogo,
                  height: 150,
                ),
              ));
        });
  }

  void intializeAnimation() {
    scalingController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 850),
    );
    scalingAnimation = Tween<double>(begin: 0.5, end: 1).animate(
      CurvedAnimation(parent: scalingController, curve: Curves.easeInOutCirc),
    );
    scalingAnimationOpacity = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(scalingController);
    Future.delayed(
      const Duration(milliseconds: 2000),
      () {
        setState(() {
          scalingController.forward();
        });
      },
    );
  }
}
