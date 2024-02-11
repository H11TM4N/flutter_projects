
import 'package:countries_api/src/features/theme/theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Countries API',
      theme: lightTheme
    );
  }
}