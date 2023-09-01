import 'package:calculator_app/body_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'A simple calculator app',
      theme: ThemeData.dark(useMaterial3: true),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator App'),
        actions: [
          PopupMenuButton(
              onSelected: (value) {},
              itemBuilder: (context) {
                return <PopupMenuEntry<String>>[
                  const PopupMenuItem(
                    value: 'Item 1',
                    child: Text('Chose theme'),
                  ),
                  const PopupMenuItem(
                    value: 'Item2',
                    child: Text('dummy item'),
                  ),
                ];
              })
        ],
      ),
      body: const BodyPage(),
    );
  }
}
