import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List listOfTasks = [];
  TextEditingController textInput = TextEditingController();

  void addTask(String value) {
    setState(() {
      listOfTasks.add(value);
    });
  }

  void removeTask(int index) {
    setState(() {
      listOfTasks.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 67.8,
        title: const Text("TODO APP"),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Add task'),
                  content: TextField(
                    controller: textInput,
                  ),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          addTask(textInput.text);
                          textInput.clear();
                        },
                        child: const Text('add')),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('cancel')),
                  ],
                ),
              );
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: listOfTasks.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(
              listOfTasks[index],
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            trailing: GestureDetector(
              onTap: () {
                removeTask(index);
              },
              child: const Icon(Icons.delete),
            ),
          );
        },
      ),
    );
  }
}
