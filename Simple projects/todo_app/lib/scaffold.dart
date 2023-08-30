import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> listView = [];
  final TextEditingController _inputController = TextEditingController();

  ListTile listTile() {
    return ListTile(
      title: Text(_inputController.text),
      trailing: const Icon(Icons.delete),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo App'),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Enter a task'),
                  content: TextField(
                    controller: _inputController,
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {},
                      child: const Text('add'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'cancel'),
                      child: const Text('cancel'),
                    ),
                  ],
                ),
              );
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [listTile()],
      ),
    );
  }
}
