import 'package:flutter/material.dart';
import 'package:todo_app/cubit/todo_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/widgets/habit_tile.dart';
import 'package:todo_app/widgets/slidable_widget.dart';

import 'cubit/todo_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TaskCubit taskCubit = BlocProvider.of<TaskCubit>(context);
    TextEditingController textInput = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 67.8,
        title: const Text("TODO APP"),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Add task'),
                  content: TextField(
                    controller: textInput,
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        taskCubit.addTask(textInput.text);
                        textInput.clear();
                      },
                      child: const Text('add'),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('cancel')),
                  ],
                ),
              );
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: BlocBuilder<TaskCubit, List<TaskState>>(
        builder: (context, state) {
          return ListView.builder(
            itemCount: state.length,
            itemBuilder: (BuildContext context, int index) {
              final task = state[index];
              final localIndex = index;
              return Kslidable(
                key: Key('index $localIndex'),
                onDelete: (ctx) => taskCubit.removeTask(task.id),
                child: KlistTile(
                  title: task.name,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
