import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/providers/theme_provider.dart';

class TodoView extends ConsumerWidget {
  const TodoView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final isDarkMode = ref.watch(themeProvider);
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
        )
      ],
    );
  }
}
