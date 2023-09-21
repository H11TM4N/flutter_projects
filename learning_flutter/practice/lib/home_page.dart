import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ListTile listTile(String title, String route) => ListTile(
          leading: const Icon(Icons.numbers),
          title: Text(title),
          onTap: () => Navigator.pushNamed(context, route),
        );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Animations'),
      ),
      body: ListView(
        children: [
          listTile('Animation Containers', 'page1'),
          listTile('Button Conversion', 'page2'),
        ],
      ),
    );
  }
}
