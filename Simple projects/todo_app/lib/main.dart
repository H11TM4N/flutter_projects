import 'package:flutter/material.dart';
import 'package:todo_app/scaffold.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'A simple todo app',
      theme: ThemeData(primarySwatch: Colors.grey),
      home: const HomePage(),
    );
  }
}

