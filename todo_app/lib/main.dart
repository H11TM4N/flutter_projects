import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/logic/blocs/todo_bloc/todo_bloc.dart';
import 'package:todo_app/ui/pages/todo_page.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'A simple todo app',
        theme: ThemeData.light().copyWith(useMaterial3: true),
        home: const TodoPage(),
      ),
    );
  }
}
