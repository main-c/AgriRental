import 'package:flutter/material.dart';

class AppColors {
  final Color primary;
  final Color onPrimary;
  final Color secondary;
  final Color onSecondary;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color error;
  final Color onError;

  AppColors.light()
      : background = const Color(0xFFFFFFFF),
        onBackground = const Color(0xFF000000),
        surface = const Color(0xFF252828),
        onSurface = const Color(0xFF61677D),
        secondary = const Color(0xFFFCB914),
        onSecondary = const Color(0xFFF5F9FE),
        primary = const Color(0xFF02C24A),
        onPrimary = const Color(0xFFFBFAF5),
        error = const Color(0xFFFF1744),
        onError = const Color(0xFFFBFAF5);

  AppColors.dark()
      : background = const Color(0xFF11001c),
        onBackground = const Color(0xFFFBFAF5),
        surface = const Color(0xFF262626),
        onSurface = const Color(0xFFFBFAF5),
        secondary = const Color.fromARGB(255, 97, 103, 125),
        onSecondary = const Color(0xFF000000),
        primary = Colors.blueAccent,
        onPrimary = const Color(0xFFFBFAF5),
        error = const Color(0xFFD50000),
        onError = const Color(0xFFFBFAF5);
}
