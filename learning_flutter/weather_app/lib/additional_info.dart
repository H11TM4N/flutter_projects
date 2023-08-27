import 'package:flutter/material.dart';

class AddInfo extends StatelessWidget {
  final IconData icon;
  final String text;
  final String value;

  const AddInfo({
    super.key,
    required this.icon,
    required this.text,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon),
        Text(text),
        Text(value),
      ],
    );
  }
}
