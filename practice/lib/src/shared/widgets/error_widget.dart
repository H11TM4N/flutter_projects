import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomErrorWidget extends StatelessWidget {
  final String errorText;
  final VoidCallback onPressed;
  const CustomErrorWidget({
    super.key,
    required this.errorText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            errorText,
            style: GoogleFonts.manrope(
              color: Colors.blue,
              fontSize: 19,
              fontWeight: FontWeight.w800,
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.withOpacity(0.2)),
              onPressed: onPressed,
              child: const Text('Try again'))
        ],
      ),
    );
  }
}
