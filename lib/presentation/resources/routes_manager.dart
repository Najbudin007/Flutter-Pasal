import 'package:flutter/material.dart';
import 'package:pasal/presentation/intro_screen/intro_screen.dart';
import 'package:pasal/presentation/resources/string_manager.dart';
import 'package:pasal/presentation/sign_in/sign_in_scree.dart';

class Routes {
  static const String initalScreenRoute = '/';
  static const String signInRoute = 'signIn';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initalScreenRoute:
        return MaterialPageRoute(builder: (_) => const IntroScreen());
      case Routes.signInRoute:
        return MaterialPageRoute(builder: (_) => const SignInScreen());
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
