import 'package:flutter/material.dart';
import 'package:todo_app/ui/theme/colors.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: const Color(0xffDDF2FD),
  colorScheme: ColorScheme.light(
    primary: veryLightGray.toColor(),
    secondary: const Color(0xff427D9D),
    background: veryLightGrayishBlue.toColor(),
    tertiary: Colors.white70,
  ),
);
