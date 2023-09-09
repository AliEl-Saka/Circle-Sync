import 'package:circlesync/core/utils/color_palette.dart';
import 'package:circlesync/core/utils/functions/get_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../maneger/page_index_cubit.dart';

class OnBoardingAnimatedButton extends StatelessWidget {
  const OnBoardingAnimatedButton({
    super.key,
    required this.navigateToNextPage,
    required this.pageController
  });
  final PageController? pageController;
  final Function navigateToNextPage;

  @override
  Widget build(BuildContext context) {
    return Align(
      widthFactor: 200,
      child: GestureDetector(
        onTap: () {
          pageController!.hasClients
              ? pageController!.page != 2
                  ? pageController!.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut)
                  : navigateToNextPage()
              : 0;
        },
        child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: 65,
            width: context.watch<PageIndexCubit>().state == 2 ? 200 : 65,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: ColorsPallete.primarySwatch,
            ),
            child: context.watch<PageIndexCubit>().state == 2
                ? Center(
                    child: Text(
                    'Get Started!',
                    overflow: TextOverflow.ellipsis,
                    style: getTextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ))
                : const Icon(
                    FontAwesomeIcons.arrowRight,
                    color: Colors.white,
                  )),
      ),
    );
  }
}
