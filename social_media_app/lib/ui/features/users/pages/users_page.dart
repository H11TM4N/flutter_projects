import 'package:flutter/material.dart';

class UsersPage extends StatelessWidget {
  static const routeName = '/users page';
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('UsersPage'),
        backgroundColor: theme.inversePrimary,
        elevation: 0,
      ),
    );
  }
}
