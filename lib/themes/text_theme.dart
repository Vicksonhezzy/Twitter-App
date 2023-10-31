import 'package:flutter/material.dart';

class AppTextTheme {
  AppTextTheme._();

  static TextTheme lightTheme = const TextTheme(
    displayLarge: TextStyle(color: Color.fromRGBO(20, 22, 25, 1)),
    displayMedium: TextStyle(color: Color.fromRGBO(20, 22, 25, 1)),
    bodyLarge: TextStyle(color: Color.fromRGBO(20, 22, 25, 1)),
    bodyMedium: TextStyle(color: Color.fromRGBO(20, 22, 25, 1)),
    bodySmall: TextStyle(color: Color.fromRGBO(20, 22, 25, 1)),
    displaySmall: TextStyle(color: Color.fromRGBO(20, 22, 25, 1)),
    headlineMedium: TextStyle(color: Color.fromRGBO(20, 22, 25, 1)),
    headlineSmall: TextStyle(color: Color.fromRGBO(20, 22, 25, 1)),
    titleLarge: TextStyle(color: Color.fromRGBO(20, 22, 25, 1)),
  );

  static TextTheme darkTheme = const TextTheme(
    displayLarge: TextStyle(color: Colors.white),
    displayMedium: TextStyle(color: Colors.white),
    bodyLarge: TextStyle(color: Colors.white),
    bodyMedium: TextStyle(color: Colors.white),
    bodySmall: TextStyle(color: Colors.white),
    displaySmall: TextStyle(color: Colors.white),
    headlineMedium: TextStyle(color: Colors.white),
    headlineSmall: TextStyle(color: Colors.white),
    titleLarge: TextStyle(color: Colors.white),
  );
}
