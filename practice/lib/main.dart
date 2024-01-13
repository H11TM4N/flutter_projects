import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const ProviderScope(child: MainPage()),
  );
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practice App',
      theme: ThemeData(useMaterial3: true),
      home: const HomePage(),
    );
  }
}
