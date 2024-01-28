import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/ui/theme/colors.dart';

class MobileBottomContainer2 extends StatelessWidget {
  const MobileBottomContainer2({super.key});

  @override
  Widget build(BuildContext context) {
    // final theme = Theme.of(context).colorScheme;
    TextStyle textStyle = GoogleFonts.josefinSans(
        color: darkGrayishBlue2.toColor(), fontWeight: FontWeight.w800);
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'All',
              style: textStyle,
            ),
            Text(
              'Active',
              style: textStyle,
            ),
            Text(
              'Completed',
              style: textStyle,
            ),
          ],
        ),
      ),
    );
  }
}
