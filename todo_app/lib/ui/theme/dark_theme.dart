import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: const Color(0xff232D3F),
  colorScheme: const ColorScheme.dark(
    primary: Color(0xff164863),
    secondary: Color(0xff04364A),
    // background: Color(0xff),
  ),
  useMaterial3: true,
);
