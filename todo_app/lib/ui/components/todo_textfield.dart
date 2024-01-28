import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TodoTextField extends StatelessWidget {
  final TextEditingController controller;
  final void Function() onTap;
  const TodoTextField({
    super.key,
    required this.controller,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return TextField(
      controller: controller,
      cursorColor: Colors.grey.shade700,
      decoration: InputDecoration(
        filled: true,
        fillColor: theme.primary,
        prefixIcon: Icon(
          CupertinoIcons.checkmark_alt_circle,
          color: theme.tertiary,
        ),
        suffixIcon: GestureDetector(
          onTap: onTap,
          child: const Icon(Icons.add),
        ),
        labelText: 'Create a new todo...',
        labelStyle: GoogleFonts.josefinSans(color: theme.tertiary),
        contentPadding: EdgeInsets.zero,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
