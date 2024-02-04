import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:practice/firebase_options.dart';
import 'package:practice/src/features/navigation/router.dart';
import 'package:practice/src/app_injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
      routerConfig: router,
    );
  }
}
