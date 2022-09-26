import 'package:flutter/material.dart';

final ThemeData appThemeData = ThemeData(
  scaffoldBackgroundColor: Colors.black,
  primaryColor: Colors.blueGrey.shade900,
  primaryColorDark: Colors.blueGrey.shade900,
  dividerColor: Colors.transparent,
  primaryColorLight: Colors.white,

  textTheme: const TextTheme(
    titleLarge: TextStyle(
      color: Colors.white,
      fontSize: 30.0,
    ),
    bodyMedium: TextStyle(
      color: Colors.white,
      fontSize: 16.0,
    ),
  ),
);
