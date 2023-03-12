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
      headlineSmall: TextStyle(color: Colors.white)),
  tabBarTheme:
      const TabBarTheme(indicatorColor: Colors.black, labelColor: Colors.white),
);
