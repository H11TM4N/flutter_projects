import 'package:practice/implicit_animations/animation_practice.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practice App',
      theme: ThemeData.dark(useMaterial3: true),
      home: const AnimationPractice(),
    );
  }
}
