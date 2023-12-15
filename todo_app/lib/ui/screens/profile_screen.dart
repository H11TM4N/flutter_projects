import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:todo_app/common/widgets/wrapper.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/providers/task_provider.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context).colorScheme;
    List<Task> tasks = ref.watch(taskProvider).tasks;
    List<Task> completed = tasks.where((task) => task.isCompleted).toList();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: theme.tertiary,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Task Progress',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2),
                          child: Text(
                            '${completed.length}/${tasks.length} tasks done',
                            style: TextStyle(color: Colors.grey.shade600),
                          ),
                        ),
                        Wrapper(
                            text: DateFormat('MMM d').format(DateTime.now()))
                      ],
                    ),
                    const Spacer(),
                    Expanded(
                      child: CircularPercentIndicator(
                        radius: 40.0,
                        animation: true,
                        lineWidth: 5.0,
                        percent: completed.length / tasks.length,
                        center: Text(
                          "${(completed.length / tasks.length * 100).toInt()}%",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        progressColor: Colors.blue,
                        circularStrokeCap: CircularStrokeCap.round,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
