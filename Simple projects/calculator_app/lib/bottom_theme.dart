import 'package:flutter/material.dart';

class ButtonAdd extends StatelessWidget {
  final String text;
  final Color color1;
  final MaterialStateProperty<Color> color2;
  const ButtonAdd(
      {super.key,
      required this.text,
      required this.color1,
      required this.color2});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        shadowColor: color2,
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 35, color: color1),
      ),
    );
  }
}
