import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/providers/task_provider.dart';
import 'package:todo_app/ui/widgets/custom_list_tile.dart';
import 'package:todo_app/ui/widgets/custom_textfield.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController taskController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Todos'),
                      IconButton.filled(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomTextField(
                                    controller: taskController,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      ref.read(taskProvider.notifier).addTask(
                                            Task(
                                              title: taskController.text,
                                            ),
                                          );
                                    },
                                    child: const Text('Add'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        icon: const Icon(Icons.add),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 70,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  color: Colors.grey.shade800,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
