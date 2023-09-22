import 'package:flutter/material.dart';
import 'main_page.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      theme: ThemeData.dark(useMaterial3: true),
      home: const MainPage(),
    );
  }
}
