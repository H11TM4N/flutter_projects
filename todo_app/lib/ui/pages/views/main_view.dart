import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/providers/task_provider.dart';
import 'package:todo_app/providers/theme_provider.dart';
import 'package:todo_app/ui/components/components.dart';
import 'package:todo_app/ui/pages/views/todo_list_view.dart';

class MainView extends HookConsumerWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final theme = Theme.of(context).colorScheme;
    final isDarkMode = ref.watch(themeProvider);
    final textController = useTextEditingController();

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('TODO', style: GoogleFonts.josefinSans()),
            GestureDetector(
              onTap: () {
                ref.read(themeProvider.notifier).toggleTheme();
              },
              child: SvgPicture.asset(
                  'assets/images/icon-${isDarkMode ? 'sun' : 'moon'}.svg'),
            ),
          ],
        ),
        const SizedBox(height: 20),
        TodoTextField(
          controller: textController,
          onTap: () {
            ref.read(taskProvider.notifier).addTask(
                  Task(title: textController.text),
                );
          },
        ),
        const SizedBox(height: 10),
        const TodoListView(),
        const MobileBottomContainer(),
        const SizedBox(height: 20),
        const MobileBottomContainer2(),
      ],
    );
  }
}
