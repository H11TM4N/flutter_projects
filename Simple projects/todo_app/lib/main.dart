import 'package:flutter/material.dart';
import 'package:todo_app/cubit/todo_cubit.dart';
import 'package:todo_app/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TaskCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'A simple todo app',
        theme: ThemeData(),
        home: const HomePage(),
      ),
    );
  }
}
