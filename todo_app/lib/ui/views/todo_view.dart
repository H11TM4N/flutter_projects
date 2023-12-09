import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:todo_app/common/utils/text_style.dart';
import 'package:todo_app/ui/widgets/tile.dart';
import 'package:todo_app/logic/blocs/todo_bloc/todo_bloc.dart';
import 'package:todo_app/logic/blocs/todo_bloc/todo_state.dart';
import 'package:todo_app/logic/repositories/todo_repo.dart';

class TodoView extends StatefulWidget {
  const TodoView({super.key});

  @override
  State<TodoView> createState() => _TodoViewState();
}

class _TodoViewState extends State<TodoView> {
  late TodoRepository todoRepository;

  @override
  void initState() {
    super.initState();
    final todoBloc = context.read<TodoBloc>();
    todoRepository = TodoRepository(todoBloc);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoBloc, TodoState>(
      builder: (ctx, state) {
        if (state.todos.isNotEmpty) {
          return ListView.builder(
            itemCount: state.todos.length,
            itemBuilder: (ctx, index) {
              final todo = state.todos[index];
              return KtodoTile(
                title: todo.title,
                onChanged: (value) {
                  value = todo.isCompleted;
                  todoRepository.toggleCompletion(index);
                },
                isCompleted: todo.isCompleted,
              );
            },
          );
        } else {
          return Center(
            child: Column(
              children: [
                Lottie.asset('assets/calendar.json'),
                Text(
                  'No tasks added',
                  style: emptyListStyle(context),
                )
              ],
            ),
          );
        }
      },
    );
  }
}
