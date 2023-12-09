import 'package:flutter/material.dart';

class FABview extends StatelessWidget {
  final VoidCallback onPressed;
  const FABview({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      shape: const CircleBorder(),
      child: const Icon(Icons.add),
    );
  }
}
