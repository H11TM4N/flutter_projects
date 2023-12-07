import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_media_app/firebase_options.dart';
import 'package:social_media_app/theme/theme.dart';
import 'package:social_media_app/ui/features/pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Social Media App',
      theme: lightMode,
      darkTheme: darkMode,
      home: const AuthPage(),
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        AuthToggle.routeName: (context) => const AuthToggle(),
        UsersPage.routeName: (context) => const UsersPage(),
        ProfilePage.routeName: (context) => const ProfilePage(),
      },
    );
  }
}
