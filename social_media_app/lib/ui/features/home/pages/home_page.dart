import 'package:flutter/material.dart';
import 'package:social_media_app/ui/features/authentication/controller/auth_controller.dart';
import 'package:social_media_app/ui/features/pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final authController = AuthController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: theme.primary,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              authController.logoutUser(context: context);
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      drawer: const DrawerView(),
    );
  }
}
