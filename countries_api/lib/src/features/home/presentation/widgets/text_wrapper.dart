import 'package:countries_api/src/shared/shared.dart';
import 'package:flutter/material.dart';

class TextWrapper extends StatelessWidget {
  final String text;
  const TextWrapper({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 6..dx, horizontal: 18..dy),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(6..dx),
        ),
        child: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
