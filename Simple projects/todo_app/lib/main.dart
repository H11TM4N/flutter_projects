import 'package:flutter/material.dart';
import 'package:todo_app/home_page.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/providers/todo_provider.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodoProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'A simple todo app',
        theme: ThemeData.dark().copyWith(),
        home: const HomePage(),
      ),
    );
  }
}
