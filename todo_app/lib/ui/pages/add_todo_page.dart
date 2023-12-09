import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/common/widgets/back_button.dart';
import 'package:todo_app/data/models/todo.dart';
import 'package:todo_app/logic/blocs/todo_bloc/todo_bloc.dart';
import 'package:todo_app/logic/repositories/todo_repo.dart';
import 'package:todo_app/ui/widgets/textfield.dart';

class AddTodoPage extends StatefulWidget {
  final Todo todo;

  const AddTodoPage({
    super.key,
    required this.todo,
  });

  @override
  State<AddTodoPage> createState() => _AddTodoPageState();
}

class _AddTodoPageState extends State<AddTodoPage> {
  late TodoRepository _todoRepository;
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    final todoBloc = context.read<TodoBloc>();
    _todoRepository = TodoRepository(todoBloc);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomBackButton(),
              ],
            ),
            const Text(
              'New Task',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            KtextField(controller: controller, hintText: 'Add task'),
            ElevatedButton(
              onPressed: () {
                _todoRepository.addTodo(widget.todo);
                Navigator.pop(context);
              },
              child: const Text('SAVE'),
            )
          ],
        ),
      ),
    );
  }
}
