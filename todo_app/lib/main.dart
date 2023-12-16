import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_app/common/db/boxes.dart';
import 'package:todo_app/ui/theme/theme.dart';
import 'models/task.dart';
import 'ui/pages.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(TaskAdapter()); // Register the adapter
  taskBox = await Hive.openBox<Task>('taskBox'); // Open the Hive box

  runApp(
    const ProviderScope(
      child: TodoApp(),
    ),
  );
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'A simple todo app',
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const HomePage(),
    );
  }
}
