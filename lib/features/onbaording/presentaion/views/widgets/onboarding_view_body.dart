import 'package:circlesync/core/utils/app_router.dart';
import 'package:circlesync/core/utils/functions/get_text_style.dart';
import 'package:circlesync/core/utils/prefs_keys.dart';
import 'package:circlesync/core/utils/size_config.dart';
import 'package:circlesync/features/onbaording/presentaion/maneger/page_index_cubit.dart';
import 'package:circlesync/features/onbaording/presentaion/views/widgets/onboarding_animated_button.dart';
import 'package:circlesync/features/onbaording/presentaion/views/widgets/onboarding_dots_indicator.dart';
import 'package:circlesync/features/onbaording/presentaion/views/widgets/onboarding_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController? pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        OnBoardingPageView(pageController: pageController!),
        Visibility(
          visible: context.watch<PageIndexCubit>().state == 2 ? false : true,
          child: Positioned(
            left: SizeConfig.defaultSize! * 2.5,
            bottom: SizeConfig.defaultSize! * 4,
            child: GestureDetector(
              onTap: () {
                pageController!.hasClients
                    ? pageController!.animateToPage(3,
                        duration: const Duration(milliseconds: 800),
                        curve: Curves.easeInOut)
                    : 0;
              },
              child: Text(
                'Skip',
                style: getTextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
              ),
            ),
          ),
        ),
        Positioned(
            bottom: SizeConfig.defaultSize! * 10,
            right: SizeConfig.defaultSize! * 10,
            left: SizeConfig.defaultSize! * 10,
            child: OnBoardingAnimatedButton(
              pageController: pageController,
              navigateToNextPage: navigateToNextPage,
            )),
        Positioned(
          left: 0,
          right: 0,
          bottom: SizeConfig.defaultSize! * 18,
          child: BlocBuilder<PageIndexCubit, int>(
            builder: (context, pageIndex) {
              return CustomDotsIndicator(dotsPosition: pageIndex);
            },
          ),
        ),
      ],
    );
  }

  void navigateToNextPage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(PrefsKeys.onBoardingKey, true);
    if (!mounted) return;
    Navigator.pushReplacementNamed(context, AppRoutes.chooseLoginMethodScreen);
  }
}
