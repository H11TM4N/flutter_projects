import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/providers/task_provider.dart';
import 'package:todo_app/ui/components/components.dart';

class TodoListView extends ConsumerWidget {
  const TodoListView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final todos = ref.watch(taskProvider).tasks;
    return Expanded(
      child: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return TodoTile(
            title: todos[index].title,
            isCompleted: todos[index].isCompleted,
          );
        },
      ),
    );
  }
}
