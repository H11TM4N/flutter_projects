import 'package:flutter/material.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TodoScreen(),
    );
  }
}

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TodoScreenState createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  List<String> tasks = [];

  void _addTask() async {
    // Show a dialog to prompt the user to enter a task
    String newTask = await showDialog(
      context: context,
      builder: (BuildContext context) {
        String taskText = '';

        return AlertDialog(
          title: const Text('Add a Task'),
          content: TextField(
            onChanged: (value) {
              taskText = value;
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context, taskText); // Pass the entered task back
              },
              child: const Text('Add'),
            ),
          ],
        );
      },
    );

    if (newTask.isNotEmpty) {
      setState(() {
        tasks.add(newTask); // Add the entered task to the list
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo app'),
        actions: [
          IconButton(
            onPressed: _addTask,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tasks[index]),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                setState(() {
                  tasks.removeAt(index); // Remove the task from the list
                });
              },
            ),
          );
        },
      ),
    );
  }
}
