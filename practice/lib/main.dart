import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:practice/todos_w_api/ui/config/app_injection_container.dart';
import 'package:practice/todos_w_api/ui/navigation/router.dart';

void main() {
  setUp();
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
      routerConfig: todoRouter,
    );
  }
}
