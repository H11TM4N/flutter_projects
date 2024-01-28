import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/providers/task_provider.dart';
import 'package:todo_app/ui/components/components.dart';

class TodoListView extends ConsumerWidget {
  const TodoListView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final todos = ref.watch(taskProvider).tasks;
    return Container(
      height: MediaQuery.of(context).size.height * .5,
      color: Theme.of(context).colorScheme.primary,
      child: ReorderableListView.builder(
        buildDefaultDragHandles: false, //TODO : reorderable listner
        itemCount: todos.length,
        itemBuilder: (context, index) {
          final todo = todos[index];
          return TodoTile(
            key: ValueKey(index),
            isFirst: index == 0,
            title: todo.title,
            isCompleted: todo.isCompleted,
            onChanged: (isChecked) {
              ref.read(taskProvider.notifier).toggleCompleted(index, todo);
            },
            onDelete: () {
              ref.read(taskProvider.notifier).removeTask(index);
            },
          );
        },
        onReorder: (int oldIndex, int newIndex) {
          ref.read(taskProvider.notifier).reorderTasks(oldIndex, newIndex);
        },
      ),
    );
  }
}
