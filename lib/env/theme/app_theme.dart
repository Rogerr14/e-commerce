import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFFfefae0);
  // static const Color secondaryColor = Color(0xFFC2D6C5);
  static const Color secondaryColor = Color(0xFFccd5ae);
  static const Color orange = Color.fromARGB(255, 236, 182, 94);

  static const Color transparent = Color(0x00000000);
  static const Color white = Color(0xFFFFFFFF);
  static const Color hinText = Color(0xffB6B6B6);
  static const Color error = Color(0xFFe63946);

  //* assets images
  static const String logo = "assets/logo.png";

  //* assets icons
  static const String icon404Path = "assets/404.svg";
  static const String iconErrorPath = "assets/error.svg";
  static const String iconCheckPath = "assets/check.svg";
  static const String iconCautionPath = "assets/caution.svg";

  ThemeData theme() {
    return ThemeData(
      textSelectionTheme: TextSelectionThemeData(
        selectionHandleColor: AppTheme.primaryColor,
        cursorColor: AppTheme.primaryColor,
      ),
      primaryColor: AppTheme.primaryColor,
      filledButtonTheme: FilledButtonThemeData(
          style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(error))),
      useMaterial3: true,
    );
  }
}
