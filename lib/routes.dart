import 'package:flutter/material.dart';
import 'package:numm/screens/landing_screen.dart';
import 'package:numm/screens/layout_screen.dart';
import 'package:numm/screens/splash_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/home':
        return MaterialPageRoute(
          builder: (_) => const LayoutScreen(
            pageIndex: 0,
          ),
        );

      case '/item':
        return MaterialPageRoute(
          builder: (_) => const LayoutScreen(
            pageIndex: 1,
          ),
        );

      case '/add':
        return MaterialPageRoute(
          builder: (_) => const LayoutScreen(
            pageIndex: 2,
          ),
        );

      case '/view':
        return MaterialPageRoute(
          builder: (_) => const LayoutScreen(
            pageIndex: 3,
          ),
        );

      case ('/landing'):
        return MaterialPageRoute(
          builder: (_) => const LandingScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
    }
  }
}
