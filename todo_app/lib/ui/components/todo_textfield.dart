import 'package:flutter/material.dart';

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
      decoration: InputDecoration(
        filled: true,
        fillColor: theme.primary,
        prefixIcon: const Icon(Icons.check_box_outline_blank),
        suffixIcon: GestureDetector(
          onTap: onTap,
          child: const Icon(Icons.add),
        ),
        contentPadding: EdgeInsets.zero,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
