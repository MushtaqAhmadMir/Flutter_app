import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const _primaryLightColor = Colors.lightBlueAccent;
  static const _primaryDarkColor = Colors.greenAccent;

  static final ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: ColorScheme.fromSeed(seedColor: _primaryLightColor));
  static final ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: ColorScheme.fromSeed(seedColor: _primaryDarkColor));
}
