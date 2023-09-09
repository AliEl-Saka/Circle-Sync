import 'package:circlesync/features/auth/presentaion/views/choose_your_login_view.dart';
import 'package:circlesync/features/onbaording/presentaion/maneger/page_index_cubit.dart';
import 'package:circlesync/features/onbaording/presentaion/views/onboarding_view.dart';
import 'package:circlesync/features/spalsh/presentaion/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoutes {
  static const String splashView = '/';
  static const String onBoardingview = '/onBoardingView';
  static const String chooseLoginMethodScreen = '/chooseLoginMethodScreen';
}

class AppRouter {
  Route<dynamic>? generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splashView:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
        );
      case AppRoutes.onBoardingview:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => PageIndexCubit(),
            child: const OnBoardingView(),
          ),
        );
      case AppRoutes.chooseLoginMethodScreen:
        return MaterialPageRoute(
          builder: (context) => const ChooseYourLoginMethodView(),
        );
    }
    return null;
  }
}
