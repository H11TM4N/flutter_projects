import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.back_hand),
          onPressed: () {
            context.go('/');
          },
        ),
        title: const Text('Settings'),
      ),
    );
  }
}
