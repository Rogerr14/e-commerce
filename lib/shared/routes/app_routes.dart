
import 'package:e_commerce/modules/routes.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const intialRoute = '/login';

  static Map<String, Widget Function(BuildContext)> routes = {
    '/home': (_) => const HomePage(),
    '/login': (_) => const LoginPage(),

  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const PageNotFound(),
    );
  }
}
