import 'package:practice/home_page.dart';
import 'package:practice/implicit_animations/animation_practice.dart';
import 'package:flutter/material.dart';
import 'package:practice/implicit_animations/button_conversion.dart';
import 'package:practice/implicit_animations/pulsating_circle.dart';

import 'explicit_animations/login_animation.dart';

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
      theme: ThemeData(useMaterial3: true),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        'page1': (context) => const AnimationContainer(),
        'page2': (context) => const ButtonConversion(),
        'page3': (context) => const PulsatingCircle(),
        'page4': (context) => const LoginScreenAnimation(),
      },
    );
  }
}
