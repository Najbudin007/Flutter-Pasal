import 'package:flutter/material.dart';
import 'package:pasal/presentation/SignUp/sign_up_screen.dart';
import 'package:pasal/presentation/home/home_screen.dart';
import 'package:pasal/presentation/intro_screen/intro_screen.dart';
import 'package:pasal/presentation/resources/string_manager.dart';
import 'package:pasal/presentation/sign_in/sign_in_screen.dart';

class Routes {
  static const String initalScreenRoute = '/';
  static const String signInRoute = 'signIn';
  static const String signUpRoute = 'SignUp';
  static const String completeProfile = 'completeProfile';
  static const String homeScreen = 'homeScreen';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initalScreenRoute:
        return MaterialPageRoute(builder: (_) => const IntroScreen());
      case Routes.signInRoute:
        return MaterialPageRoute(builder: (_) => const SignInScreen());
      case Routes.signUpRoute:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case Routes.completeProfile:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(title: const Text(AppStrings.noRouteFound)),
              body: const Center(
                child: Text(AppStrings.noRouteFound),
              ),
            ));
  }
}
