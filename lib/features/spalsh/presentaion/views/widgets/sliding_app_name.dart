import 'package:circlesync/core/utils/color_palette.dart';
import 'package:circlesync/core/utils/functions/get_text_style.dart';
import 'package:flutter/material.dart';

class SlidingAppName extends StatefulWidget {
  const SlidingAppName({super.key});

  @override
  State<SlidingAppName> createState() => _SlidingAppNameState();
}

class _SlidingAppNameState extends State<SlidingAppName>
    with TickerProviderStateMixin {
  late AnimationController slidingRightController;
  late Animation<Offset> slidingRightAnimation;
  late Animation<double> slidingRightAnimationOpacity;

  late AnimationController slidingDownController;
  late Animation<Offset> slidingDownAnimation;

  @override
  void initState() {
    intializeAnimation();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    slidingRightController.dispose();
    slidingDownController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingRightController,
        builder: (context, _) {
          return SlideTransition(
            position: slidingRightAnimation,
            child: Opacity(
              opacity: slidingRightAnimationOpacity.value,
              child: SlideTransition(
                position: slidingDownAnimation,
                child: Text('Circle Sync',
                    style: getTextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                        color: ColorsPallete.primarySwatch)),
              ),
            ),
          );
        });
  }

  void intializeAnimation() {
    intializeSlidingLeftAnimation();
    intializeSlidingDownAnimation();
  }

  void intializeSlidingDownAnimation() {
    slidingDownController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 750),
    );
    slidingDownAnimation =
        Tween<Offset>(begin: Offset.zero, end: const Offset(0, 3)).animate(
      CurvedAnimation(parent: slidingDownController, curve: Curves.easeInOut),
    );

    Future.delayed(const Duration(milliseconds: 2000), () {
      slidingDownController.forward();
    });
  }

  void intializeSlidingLeftAnimation() {
    slidingRightController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 650),
    );

    slidingRightAnimation =
        Tween<Offset>(begin: const Offset(-1, 0), end: Offset.zero).animate(
      CurvedAnimation(parent: slidingRightController, curve: Curves.easeInOut),
    );

    slidingRightAnimationOpacity = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(slidingRightController);

    slidingRightController.forward();
  }
}
