import 'package:flutter/material.dart';
import 'package:gritstone_test/core/routes/routes.dart';
import 'package:gritstone_test/presentation/screens/home/screen_home.dart';
import 'package:gritstone_test/presentation/screens/splash/screen_splash.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    // final Object? args = routeSettings.arguments;

    switch (routeSettings.name) {
      case routeRoot:
        return MaterialPageRoute(builder: (_) => const ScreenSplash());

      case routeHome:
        return MaterialPageRoute(builder: (_) => const ScreenHome());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute({String? error, bool argsError = false}) {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            error ?? '${argsError ? 'Arguments' : 'Navitation'} Error',
            style: const TextStyle(
                fontWeight: FontWeight.w600, color: Colors.black54),
          ),
        ),
      ),
    );
  }
}
