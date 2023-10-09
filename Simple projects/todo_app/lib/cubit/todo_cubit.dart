import 'package:flutter_bloc/flutter_bloc.dart';

part 'todo_state.dart';

class TaskCubit extends Cubit<List<TaskState>> {
  TaskCubit() : super([]);

  void addTask(String newName) {
    final newTask = TaskState(id: state.length + 1, name: newName);

    final updatedTasks = List<TaskState>.from(state)..add(newTask);

    emit(updatedTasks);
  }

  void removeTask(int id) {
    final taskToRemove = state.indexWhere((task) => task.id == id);
    final updatedTasks = List<TaskState>.from(state)..removeAt(taskToRemove);

    emit(updatedTasks);
  }
}
