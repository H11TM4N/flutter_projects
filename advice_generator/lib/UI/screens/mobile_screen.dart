import 'package:advice_generator/constants/colors.dart';
import 'package:flutter/material.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlue.toColor(),
      body: Center(
        child: Text('Mobile view'),
      ),
    );
  }
}
