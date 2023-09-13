import 'package:circlesync/features/auth/presentaion/choose_signup_method.dart/views/choose_signup_method_view.dart';
import 'package:circlesync/features/onbaording/presentaion/maneger/page_index_cubit.dart';
import 'package:circlesync/features/onbaording/presentaion/views/onboarding_view.dart';
import 'package:circlesync/features/spalsh/presentaion/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoutes {
  static const String splashView = '/';
  static const String onBoardingView = '/onBoarding View';
  static const String chooseSignUpMethodView = '/choose signUp method view';
  
}

class AppRouter {
  Route<dynamic>? generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splashView:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
        );
      case AppRoutes.onBoardingView:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => PageIndexCubit(),
            child: const OnBoardingView(),
          ),
        );
      case AppRoutes.chooseSignUpMethodView:
        return MaterialPageRoute(
          builder: (context) => const ChooseSignUpMethodView(),
        );
      
    }
    return null;
  }
}
