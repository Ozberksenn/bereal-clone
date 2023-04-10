import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData light = lightTheme;
}

ThemeData lightTheme = ThemeData(
  badgeTheme: const BadgeThemeData(backgroundColor: Colors.black),
  scaffoldBackgroundColor: Colors.black,
  primaryColor: Colors.black,
  appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
  textTheme: const TextTheme(
      titleLarge: TextStyle(color: Colors.white),
      headlineLarge: TextStyle(color: Colors.white, fontSize: 26),
      headlineMedium: TextStyle(color: Colors.white, fontSize: 18),
      headlineSmall: TextStyle(color: Colors.white, fontSize: 16)),
  tabBarTheme:
      const TabBarTheme(indicatorColor: Colors.black, labelColor: Colors.white),
);
