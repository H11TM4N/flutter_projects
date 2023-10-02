import 'package:flutter_riverpod/flutter_riverpod.dart';

final todoProvider = StateNotifierProvider<TodoNotifier, List>((ref) {
  return TodoNotifier();
});

class TodoNotifier extends StateNotifier<List> {
  TodoNotifier() : super([]);

  void addTask(String task) {
    state = [...state, task];
  }

  void removeTask(int index) {
    [...state].removeAt(index);
  }
}
