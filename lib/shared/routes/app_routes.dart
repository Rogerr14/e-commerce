import 'package:flutter/material.dart';

class AppRoutes {
  static const intialRoute = '/home';

  static Map<String, Widget Function(BuildContext)> routes = {
    // '/home' : (_) => const HomePage();
  };

  // static Route<dynamic> onGenerateRoute(RoutteSettings settings){
  //   return MaterialPageRoute(builder: (context) => const PageNotFound(),)
  // }
}
