import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todo_app/data/models/todo.dart';
import 'package:todo_app/ui/pages/add_todo_page.dart';
import 'package:todo_app/ui/views/todo_view.dart';
import 'package:todo_app/ui/widgets/icon_button.dart';
import 'package:todo_app/logic/blocs/todo_bloc/todo_bloc.dart';
import 'package:todo_app/logic/repositories/todo_repo.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
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
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xffF5F7F8),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                DrawerButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      iconSize: MaterialStatePropertyAll(28),
                      iconColor: MaterialStatePropertyAll(Color(0xff96B6C5))),
                ),
                const Spacer(),
                CustomIconButton(
                  onPressed: () {},
                  icon: FontAwesomeIcons.magnifyingGlass,
                ),
                CustomIconButton(
                  onPressed: () {},
                  icon: FontAwesomeIcons.bell,
                ),
              ],
            ),
            const SizedBox(height: 25),
            const Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'What\'s up, Jerry!',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 35),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('PROGRESS'),
                    ],
                  ),
                  SizedBox(height: 25),
                  Expanded(child: TodoView())
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddTodoPage(
                    todo: Todo(
                  title: controller.text,
                )),
              ));
        },
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
