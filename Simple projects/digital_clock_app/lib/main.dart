import 'package:digital_clock_app/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ClockApp());
}

class ClockApp extends StatelessWidget {
  const ClockApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Digital Clock App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}
