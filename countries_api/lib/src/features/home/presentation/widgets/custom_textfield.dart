import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  const CustomTextField({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        constraints: const BoxConstraints(
          maxWidth: 400,
        ),
        hintText: 'Search for a country...',
        prefixIcon: const Icon(FontAwesomeIcons.magnifyingGlass),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        fillColor: theme.primary,
      ),
      keyboardType: TextInputType.name,
    );
  }
}
