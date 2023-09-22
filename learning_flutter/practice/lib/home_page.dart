import 'package:flutter/material.dart';
// import 'package:practice/providers/list_tile_provider.dart';
// import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ListTile listTile(String title, String route) => ListTile(
          leading: const Icon(Icons.numbers),
          title: Text(title),
          onTap: () => Navigator.pushNamed(context, route),
        );
    // ListTileProvider listTileProvider = Provider.of<ListTileProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('FLutter Practice'),
      ),
      body: Column(
        children: [
          ExpansionTile(
            title: const Text('Animations'),
            leading: const Icon(Icons.animation_sharp),
            children: [
              listTile('Animation Containers', 'page1'),
              listTile('Button Conversion', 'page2'),
              listTile('Tween Animation', 'page3'),
              listTile('Login Page Animation', 'page4'),
              listTile('List Animation', 'page5'),
              listTile('Progress Animation', 'page6'),
              listTile('Page Navigation Animation', 'page7'),
              listTile('Bouncing Ball Animation', 'page8'),
            ],
          ),
        ],
      ),
    );
  }
}
