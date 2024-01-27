import 'package:flutter/material.dart';
import 'package:todo_app/ui/components/components.dart';

class MobilePage extends StatelessWidget {
  const MobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              BackgroundImage(isMobile: true),
            ],
          ),
        ],
      ),
    );
  }
}
