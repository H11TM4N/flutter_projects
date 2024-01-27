import 'package:flutter/material.dart';
import 'package:todo_app/ui/theme/colors.dart';

ThemeData darkTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: const Color(0xff232D3F),
  colorScheme: ColorScheme.dark(
    primary: veryDarkDesatratedBlue.toColor(),
    secondary: const Color(0xff04364A),
    background: veryDarkBlue.toColor(),
    tertiary: const Color(0xff213555),
  ),
);
