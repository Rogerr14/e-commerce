import 'package:e_commerce/env/theme/app_theme.dart';
import 'package:e_commerce/shared/provider/functional_provider.dart';
import 'package:e_commerce/shared/routes/app_routes.dart';
import 'package:e_commerce/shared/widgets/layout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FunctionalProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Artesanal Shop',
        // home: LayoutPage(
        //   requiredStack: false,
        theme: AppTheme().theme(),
        // )),
        initialRoute: AppRoutes.intialRoute,
        routes: AppRoutes.routes,
        onGenerateRoute: AppRoutes.onGenerateRoute,
      ),
    );
  }
}
