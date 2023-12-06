import 'package:flutter/material.dart';

class UsersPage extends StatelessWidget {
  static const routeName = '/users page';
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UsersPage'),
      ),
    );
  }
}
