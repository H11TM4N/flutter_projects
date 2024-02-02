import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingPage extends StatelessWidget {
  final String title;
  const SettingPage({super.key, required this.title});

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
        title: Text(title),
      ),
    );
  }
}
