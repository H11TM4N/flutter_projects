import 'package:flutter/material.dart';
import 'package:social_media_app/ui/features/pages.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home page';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: theme.inversePrimary,
        elevation: 0,
      ),
      drawer: const DrawerView(),
    );
  }
}
