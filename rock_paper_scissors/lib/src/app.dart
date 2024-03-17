import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/src/shared/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rock, Paper, Scissors',
      theme: appTheme,
    );
  }
}
