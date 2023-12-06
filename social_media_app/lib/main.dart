import 'package:flutter/material.dart';
import 'package:social_media_app/theme/theme.dart';
import 'package:social_media_app/ui/features/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Social Media App',
      theme: lightMode,
      darkTheme: darkMode,
      home: LoginPage(),
    );
  }
}
