import 'package:advice_generator/UI/pages/home_page.dart';
import 'package:advice_generator/UI/screens/mobile_screen.dart';
import 'package:advice_generator/UI/screens/web_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Advice Generator',
      theme: ThemeData(useMaterial3: true),
      home: const HomePage(
        mobileScreen: MobileScreen(),
        webScreen: WebScreen(),
      ),
    );
  }
}
