import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/zerotomastery/providers/todo_provider.dart';

class TodoScreen extends ConsumerWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List tasks = ref.watch(todoProvider);
    TodoNotifier todoController = ref.watch(todoProvider.notifier);
    TextEditingController textEditingController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo App'),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  actions: [
                    TextField(
                      controller: textEditingController,
                    ),
                    TextButton(
                      onPressed: () {
                        todoController.addTask(textEditingController.text);
                      },
                      child: const Text('Add task'),
                    )
                  ],
                ),
              );
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) => KlistTile(
          title: tasks[index],
        ),
      ),
    );
  }
}

class KlistTile extends StatelessWidget {
  final String title;
  const KlistTile({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key('key for $title'),
      background: Container(
        color: Colors.red,
        child: const Icon(Icons.delete),
      ),
      secondaryBackground: Container(
        color: Colors.green,
        child: const Icon(Icons.check),
      ),
      onDismissed: (direction) {
        if (direction == DismissDirection.startToEnd) {
        } else if (direction == DismissDirection.endToStart) {}
      },
      child: ListTile(
        title: Text(title),
        focusColor: Colors.blue,
      ),
    );
  }
}
