import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/providers/task_provider.dart';
import 'package:todo_app/ui/components/components.dart';

class TodoListView extends ConsumerWidget {
  const TodoListView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final todos = ref.watch(taskProvider).tasks;
    return SizedBox(
      height: MediaQuery.of(context).size.height * .5,
      child: ListView.separated(
        itemCount: todos.length,
        separatorBuilder: (context, index) => const Divider(
          height: 1,
          thickness: 0.3,
        ),
        itemBuilder: (context, index) {
          return TodoTile(
            isFirst: index == 0,
            title: todos[index].title,
            isCompleted: todos[index].isCompleted,
          );
        },
      ),
    );
  }
}
