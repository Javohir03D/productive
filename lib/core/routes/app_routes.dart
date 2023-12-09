import 'package:flutter/material.dart';
import 'package:productive/constants/routes.dart';
import 'package:productive/core/pages/error.dart';
import 'package:productive/core/pages/onboarding.dart';

import '../../features/home/presentation/home_screen.dart';
import '../functions/app_functions.dart';
import '../pages/splash.dart';

class AppRouter {
  static Route<dynamic> router(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return fade(const SplashScreen());
      case AppRoutes.home:
        return fade(const HomeScreen());
      case AppRoutes.onboarding:
        return fade(const OnboardingScreen());
      default:
        return fade(const ErrorScreen());
    }
  }
}
