import 'package:advice_generator/constants/colors.dart';
import 'package:flutter/material.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlue.toColor(),
      body: Center(
        child: Text('Web view'),
      ),
    );
  }
}
