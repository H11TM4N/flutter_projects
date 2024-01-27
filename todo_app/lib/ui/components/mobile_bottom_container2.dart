import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileBottomContainer2 extends StatelessWidget {
  const MobileBottomContainer2({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = GoogleFonts.lato();
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
