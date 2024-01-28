import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileBottomContainer extends StatelessWidget {
  final int notCompleted;
  const MobileBottomContainer({
    super.key,
    required this.notCompleted,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final textStyle = GoogleFonts.josefinSans(
      color: theme.tertiary,
    );
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.circular(5),
        ),
        border: const Border(top: BorderSide(color: Colors.white24)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$notCompleted items left',
              style: textStyle,
            ),
            Text(
              'Clear completed',
              style: textStyle,
            ),
          ],
        ),
      ),
    );
  }
}
