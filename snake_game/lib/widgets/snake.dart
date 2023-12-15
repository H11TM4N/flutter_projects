import 'package:flutter/material.dart';

class Snake extends StatelessWidget {
  final bool lightOn;
  const Snake({
    super.key,
    required this.lightOn,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        height: 100,
        width: 100,
        color: lightOn ? Colors.blue.shade600 : Colors.grey[900],
      ),
    );
  }
}
