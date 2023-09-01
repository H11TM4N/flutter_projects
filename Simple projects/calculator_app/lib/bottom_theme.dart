import 'package:flutter/material.dart';

class ButtonAdd extends StatelessWidget {
  final String text;
  final Color color1;
  final Color color2;
  const ButtonAdd({
    super.key,
    required this.text,
    required this.color1,
    required this.color2,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        fixedSize: const Size(90, 90),
        backgroundColor: color2,
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          text,
          style: TextStyle(fontSize: 40, color: color1),
        ),
      ),
    );
  }
}
