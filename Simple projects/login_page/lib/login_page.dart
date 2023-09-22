import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: 'Enter your username'),
          ),
          const TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock, size: 20),
                hintText: 'Enter your password'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}