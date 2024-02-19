import 'package:countries_api/src/shared/shared.dart';
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
        contentPadding: EdgeInsets.zero,
        hintText: 'Search for a country...',
        hintStyle: TextStyle(color: theme.secondary, fontSize: 16..sp),
        prefixIcon: Icon(
          FontAwesomeIcons.magnifyingGlass,
          size: 16..sp,
          color: theme.secondary,
        ),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide.none,
        ),
        fillColor: theme.primary,
      ),
      keyboardType: TextInputType.name,
    );
  }
}
