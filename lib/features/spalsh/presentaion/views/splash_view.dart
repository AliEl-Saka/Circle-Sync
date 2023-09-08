import 'package:circlesync/core/utils/color_palette.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/app logo.png',
            height: 175,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'CircleSync',
                style: TextStyle(
                    fontSize: 32,
                    fontFamily: 'Nunito',
                    color: ColorsPallete.primarySwatch,
                    fontWeight: FontWeight.w800),
              )
            ],
          )
        ],
      ),
    );
  }
}
