import 'package:advice_generator/UI/components/advice_container.dart';
import 'package:advice_generator/constants/colors.dart';
import 'package:flutter/material.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlue.toColor(),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: AdviceContainer(isMobile: true),
            ),
          ],
        ),
      ),
    );
  }
}
