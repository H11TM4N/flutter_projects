import 'package:advice_generator/common/colors.dart';
import 'package:advice_generator/services/services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ErrorWidget extends StatelessWidget {
  final String errorText;
  const ErrorWidget({
    super.key,
    required this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            errorText,
            style: GoogleFonts.manrope(
              color: lightCyan.toColor(),
              fontSize: 19,
              fontWeight: FontWeight.w800,
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: neonGreen.toColor().withOpacity(0.2)),
              onPressed: () {
                ApiService.getAdviceData();
              },
              child: const Text('Try again'))
        ],
      ),
    );
  }
}
