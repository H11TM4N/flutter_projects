import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TileContainer extends StatelessWidget {
  final void Function()? onTap;
  final String childText;
  const TileContainer({
    super.key,
    required this.onTap,
    required this.childText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
              colors: [
                Colors.blueGrey.shade700,
                Colors.blueGrey.shade400,
              ],
            ),
          ),
          child: Text(
            childText,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
