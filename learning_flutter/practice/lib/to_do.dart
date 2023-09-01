import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  TextEditingController textEditingController = TextEditingController();
  List lists = [];

  void addList(String value) {
    setState(() {
      lists.add(value);
    });
  }

  void removeList(int index) {
    setState(() {
      lists.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo page'),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Add task'),
                      actions: [
                        TextField(
                          controller: textEditingController,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('add'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('cancel'),
                        ),
                      ],
                    );
                  });
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          ListView.builder(
            itemCount: lists.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: const Text('Jones'),
                trailing: GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.delete),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
