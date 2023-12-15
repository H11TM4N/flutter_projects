import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  final void Function()? onTap;
  const StartButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [
              Colors.blue.shade500,
              Colors.cyan,
            ],
          ),
          boxShadow: const [
            BoxShadow(blurRadius: 4),
          ],
        ),
        child: const Text(
          'Start',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );
  }
}
