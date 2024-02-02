import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:practice/pages/page_view.dart';

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
      home: const MyPageView(),
    );
  }
}
