import 'package:circlesync/features/auth/presentaion/choose_signup_method/views/choose_signup_method_view.dart';
import 'package:circlesync/features/auth/presentaion/login/views/login_view.dart';
import 'package:circlesync/features/auth/presentaion/otp_verification/Views/otp_verification_view.dart';
import 'package:circlesync/features/auth/presentaion/signup_with_email_or_phone/views/signup_with_email.dart';
import 'package:circlesync/features/auth/presentaion/signup_with_email_or_phone/views/signup_with_phone.dart';
import 'package:circlesync/features/onbaording/presentaion/maneger/page_index_cubit.dart';
import 'package:circlesync/features/onbaording/presentaion/views/onboarding_view.dart';
import 'package:circlesync/features/spalsh/presentaion/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoutes {
  static const String splashView = '/';
  static const String onBoardingView = '/onBoarding View';
  static const String chooseSignUpMethodView = '/choose signUp method view';
  static const String signUpWithEmailView = '/SignUp with email';
  static const String otpVerificationView = '/otp verification';
  static const String signUpWithPhoneView = '/SignUp with phone';
  static const String logIn = '/Login View';
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
      case AppRoutes.signUpWithEmailView:
        return MaterialPageRoute(
          builder: (context) => const SignUpWithEmailView(),
        );
      case AppRoutes.otpVerificationView:
        return MaterialPageRoute(
          builder: (context) => const OtpVerificationView(),
        );
      case AppRoutes.signUpWithPhoneView:
        return MaterialPageRoute(
          builder: (context) => const SignUpWithPhoneView(),
        );
      case AppRoutes.logIn:
        return MaterialPageRoute(
          builder: (context) => const LogInView(),
        );
    }
    return null;
  }
}
