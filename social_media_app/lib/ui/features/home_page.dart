import 'package:flutter/material.dart';
import 'package:social_media_app/ui/features/authentication/controller/auth_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = AuthController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.blue.shade600,
        actions: [
          IconButton(
            onPressed: () {
              authController.logoutUser(context: context);
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
    );
  }
}
