// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
  TaskNotifier() : super(UserTasks(tasks: []));

  void addTask(Task task) {
    try {
      List<Task> temp = List.from(state.tasks);
      temp.insert(0, task);
      state = state.copyWith(
        tasks: temp,
      );
    } catch (e) {
      throw 'An unexpected error occured';
    }
  }

  void removeTask(int index) {
    try {
      List<Task> temp = List.from(state.tasks);
      temp.removeAt(index);
      state = state.copyWith(
        tasks: temp,
      );
    } catch (e) {
      throw 'An unexpected error occured';
    }
  }

  void toggleCompleted(int index, Task task) {
    try {
      List<Task> temp = List.from(state.tasks);
      temp[index] = task.copyWith(
        isCompleted: !task.isCompleted,
      );
      state = state.copyWith(
        tasks: temp,
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
}
