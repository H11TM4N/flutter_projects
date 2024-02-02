import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:practice/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:practice/pages/settings_page.dart';

void main() {
  runApp(
    const ProviderScope(child: MainPage()),
  );
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Practice App',
      theme: ThemeData(useMaterial3: true),
      routerConfig: router,
    );
  }
}

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, _) => const HomePage()),
    GoRoute(path: '/setting', builder: (context, _) => const SettingPage()),
  ],
);
