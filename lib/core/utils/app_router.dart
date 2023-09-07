import 'package:circlesync/features/spalsh/presentaion/views/splash_view.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String splashView = '/';
}

class AppRouter {
  Route<dynamic>? generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splashView:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
        );
    }
    return null;
  }
}
