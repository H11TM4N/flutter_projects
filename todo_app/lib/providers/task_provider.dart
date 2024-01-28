// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/common/db/boxes.dart';
import 'package:todo_app/models/task.dart';

class UserTasks {
  final List<Task> tasks;

  UserTasks({
    required this.tasks,
  });

  UserTasks copyWith({
    List<Task>? tasks,
  }) {
    return UserTasks(
      tasks: tasks ?? this.tasks,
    );
  }
}

final taskProvider = StateNotifierProvider<TaskNotifier, UserTasks>((ref) {
  return TaskNotifier();
});

class TaskNotifier extends StateNotifier<UserTasks> {
  TaskNotifier() : super(UserTasks(tasks: [])) {
    state = state.copyWith(tasks: taskBox.values.toList());
  }

  void addTask(Task task) {
    try {
      if (task.title.isNotEmpty) {
        final int newIndex = state.tasks.length;
        taskBox.put(
          newIndex,
          task,
        );
        state = state.copyWith(tasks: taskBox.values.toList());
      }
    } catch (e) {
      throw 'An unexpected error occurred';
    }
  }

  void removeTask(int index) {
    try {
      taskBox.deleteAt(index);
      state = state.copyWith(
        tasks: taskBox.values.toList(),
      );
    } catch (e) {
      throw 'An unexpected error occured';
    }
  }

  void toggleCompleted(int index, Task task) {
    try {
      task.isCompleted = !task.isCompleted;
      taskBox.putAt(index, task);
      state = state.copyWith(
        tasks: taskBox.values.toList(),
      );
    } catch (e) {
      throw 'An unexpected error occured';
    }
  }

  void updateTask(int index, Task task) {
    try {
      List<Task> temp = List.from(state.tasks);
      if (index >= 0 && index < state.tasks.length) {
        temp[index] = task;
      }
      state = state.copyWith(
        tasks: temp,
      );
    } catch (e) {
      throw 'An unexpected error occured';
    }
  }

  void reorderTasks(int oldIndex, int newIndex) {
    final List<Task> newTasks = List.from(state.tasks);
    final Task movedTask = newTasks.removeAt(oldIndex);
    newTasks.insert(newIndex, movedTask);

    //* Update the state with the new order of tasks
    state = state.copyWith(tasks: newTasks);

    //* update the taskBox
    taskBox.clear();
    for (int i = 0; i < newTasks.length; i++) {
      taskBox.put(i, newTasks[i]);
    }
  }
}
