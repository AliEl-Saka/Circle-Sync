import 'package:circlesync/core/utils/app_assets.dart';
import 'package:circlesync/features/onbaording/presentaion/maneger/page_index_cubit.dart';
import 'package:circlesync/features/onbaording/presentaion/views/widgets/onboarding_page_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      onPageChanged: (value) {
        context.read<PageIndexCubit>().setPageIndex(value);
      },
      children: const [
        OnBoardingPageViewItem(
          image: AppAssets.onboardingFirstImage,
          title: 'Welcome to CircleSync',
          subTitle: 'Connect, Share, and Discover with CircleSync',
        ),
        OnBoardingPageViewItem(
          image: AppAssets.onboardingSecondImage,
          title: 'Explore Your World ',
          subTitle: 'Create, Share, and Interact like Never Before',
        ),
        OnBoardingPageViewItem(
          image: AppAssets.onboardingThirdImage,
          title: 'Your Social Hub Awaits',
          subTitle: 'Empowering You to Connect, Create, and Control',
        ),
      ],
    );
  }
}
