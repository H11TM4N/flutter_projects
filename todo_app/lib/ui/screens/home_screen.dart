import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/providers/task_provider.dart';
import 'package:todo_app/ui/widgets/custom_button.dart';
import 'package:todo_app/ui/widgets/custom_list_tile.dart';
import 'package:todo_app/ui/widgets/custom_textfield.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context).colorScheme;
    TextEditingController taskController = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Todos',
                      style: TextStyle(
                        fontSize: 26,
                      )),
                  IconButton.filled(
                    onPressed: () {
                      showModalBottomSheet(
                        backgroundColor: theme.primary,
                        context: context,
                        isScrollControlled: true,
                        builder: (context) {
                          return SingleChildScrollView(
                            child: Container(
                              padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).viewInsets.bottom,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomTextField(
                                    controller: taskController,
                                  ),
                                  CustomButton(
                                    onTap: () {
                                      ref.read(taskProvider.notifier).addTask(
                                            Task(
                                              title: taskController.text,
                                            ),
                                          );
                                    },
                                    title: 'add task',
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    icon: const Icon(Icons.add),
                  )
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListView.builder(
                  itemCount: ref.watch(taskProvider).tasks.length,
                  itemBuilder: (context, index) {
                    final tasks = ref.watch(taskProvider).tasks;
                    return CustomListTile(
                      title: tasks[index].title,
                      isCompleted: tasks[index].isCompleted,
                      onChanged: (_) {
                        ref.read(taskProvider.notifier).toggleCompleted(
                              index,
                              tasks[index],
                            );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
