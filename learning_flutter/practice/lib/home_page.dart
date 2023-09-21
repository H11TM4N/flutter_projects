import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animations'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Animation containers'),
            onTap: () => Navigator.pushNamed(context, 'page1'),
          ),
          ListTile(
            title: const Text('Button conversion'),
            onTap: () => Navigator.pushNamed(context, 'page2'),
          ),
          ListTile(
            title: const Text('Animation containers'),
            onTap: () => Navigator.pushNamed(context, 'page1'),
          ),
          ListTile(
            title: const Text('Animation containers'),
            onTap: () => Navigator.pushNamed(context, 'page1'),
          ),
        ],
      ),
    );
  }
}
