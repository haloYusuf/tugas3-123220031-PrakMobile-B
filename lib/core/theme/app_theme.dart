import 'package:flutter/material.dart';

import '../constant/constant.dart';

class AppTheme {
  static ThemeData mainTheme = ThemeData(
    fontFamily: 'Poppins',
    colorScheme: ColorScheme(
      brightness: Constant.brightness,
      primary: Constant.primaryColor,
      onPrimary: Constant.onPrimaryColor,
      secondary: Constant.secondaryColor,
      onSecondary: Constant.onSecondaryColor,
      error: Constant.errorColor,
      onError: Constant.onErrorColor,
      surface: Constant.surfaceColor,
      onSurface: Constant.onSurfaceColor,
    ),
    scaffoldBackgroundColor: Constant.backgroundColor,
    appBarTheme: AppBarTheme(
      backgroundColor: Constant.primaryColor,
      foregroundColor: Constant.onPrimaryColor,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Constant.onPrimaryColor,
        fontSize: 20,
        fontWeight: FontWeight.w800,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Constant.primaryColor,
        foregroundColor: Constant.onPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 2,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Constant.secondaryColor,
      ),
    ),
    tabBarTheme: TabBarTheme(
      labelColor: Constant.onPrimaryColor,
      unselectedLabelColor: Constant.onSurfaceColor,
      indicator: BoxDecoration(),
      labelStyle: const TextStyle(
        fontSize: 16,
      ),
      labelPadding: const EdgeInsets.only(
        bottom: 8,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}
