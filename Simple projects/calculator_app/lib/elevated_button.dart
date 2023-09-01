import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  final String text;
  const MyElevatedButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 80.0,
      height: 80.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(90, 100),
          shape: const ContinuousRectangleBorder(),
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 28),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
