import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/providers/todo_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TodoProvider todoProvider = Provider.of<TodoProvider>(context);

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
                    controller: todoProvider.textInput,
                  ),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          todoProvider.addTask(todoProvider.textInput.text);
                          todoProvider.textInput.clear();
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
        itemCount: todoProvider.listOfTasks.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(13.0),
                bottomRight: Radius.circular(13.0),
              ),
            ),
            elevation: 9,
            color: Colors.transparent,
            child: ListTile(
              title: Text(
                todoProvider.listOfTasks[index].title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  decoration: todoProvider.strikeThroughList[index]
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              ),
              leading: GestureDetector(
                onTap: () {
                  todoProvider.checkBoxToggle(index);
                  todoProvider.strikeThrough(index);
                },
                child: todoProvider.checkBoxes[index]
                    ? const Icon(Icons.check_box)
                    : const Icon(Icons.check_box_outline_blank),
              ),
              trailing: GestureDetector(
                onTap: () {
                  todoProvider.removeTask(index);
                },
                child: const Icon(Icons.delete),
              ),
            ),
          );
        },
      ),
    );
  }
}
