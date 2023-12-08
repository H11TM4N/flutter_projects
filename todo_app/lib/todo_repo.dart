import 'package:todo_app/todo.dart';
import 'package:todo_app/logic/blocs/todo_bloc/todo_bloc.dart';
import 'package:todo_app/logic/blocs/todo_bloc/todo_event.dart';

class TodoRepository {
  final TodoBloc todoBloc;

  TodoRepository(this.todoBloc);

  void addTodo(Todo todo) {
    todoBloc.add(AddTodoEvent(todo: todo));
  }

  void removeTodo(Todo todo) {
    todoBloc.add(RemoveTodoEvent(todo: todo));
  }

  void editTodo(int index, Todo updatedTodo) {
    todoBloc.add(EditTodoEvent(index: index, updatedTodo: updatedTodo));
  }

  void toggleCompletion(int index) {
    todoBloc.add(ToggleCompletionEvent(index: index));
  }
}
