import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'A todo app',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MainPage(),
    );
  }
}

enum MenuAction { add }

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var todo = const TextField();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo app'),
        actions: [
          PopupMenuButton<MenuAction>(
            itemBuilder: (BuildContext context) => [
              const PopupMenuItem(
                value: MenuAction.add,
                child: Text('add task')
              ),
            ],
            onSelected: (value) {
              switch (value) {
                case MenuAction.add:
                  todo;
                  
                  break;
              }
            },
          ),
        ],
      ),
      body: const Column(
        children: [
          
        ],
      ),
    );
  }
}
