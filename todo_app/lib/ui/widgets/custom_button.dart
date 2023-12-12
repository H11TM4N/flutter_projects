import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onTap;
  final String title;
  const CustomButton({
    super.key,
    required this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.blue.shade500,
            Theme.of(context).colorScheme.secondary,
          ]),
          borderRadius: BorderRadius.circular(15),
          shape: BoxShape.rectangle,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        margin: const EdgeInsets.only(bottom: 8),
        child: Text(title),
      ),
    );
  }
}
