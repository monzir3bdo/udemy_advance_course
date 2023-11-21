import 'package:clean_architecture/presentation/forget_password/forget_password.dart';
import 'package:clean_architecture/presentation/login/login.dart';
import 'package:clean_architecture/presentation/onboarding/onboarding.dart';
import 'package:clean_architecture/presentation/register/register.dart';
import 'package:clean_architecture/presentation/splash/splash_view.dart';
import 'package:clean_architecture/resources/strings_manager.dart';

import 'package:flutter/material.dart';

import '../presentation/main/main_view..dart';

abstract class Routes {
  static const String splashRoute = '/';
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';
  static const String forgetPasswordRoute = '/forgetPassword';
  static const String storeDetailsRoute = '/storeDetails';
  static const String mainRoute = '/main';
  static const String onboarding = '/onboarding';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.forgetPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgetPasswordView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainView());
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingView());
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.noRouteFound),
        ),
        body: const Center(
          child: Text(AppStrings.noRouteFound),
        ),
      ),
    );
  }
}
