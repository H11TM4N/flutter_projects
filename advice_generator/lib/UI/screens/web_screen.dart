import 'package:advice_generator/UI/components/advice_container.dart';
import 'package:advice_generator/common/colors.dart';
import 'package:flutter/material.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlue.toColor(),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AdviceContainer(isMobile: false),
          ),
        ],
      ),
    );
  }
}
