import 'package:digital_clock_app/popup_menu_button.dart';
import 'package:flutter/material.dart';

class TimerScreen extends StatelessWidget {
  const TimerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          popupMenuButton()
        ],
        title: const Text('Timer'),
      ),
    );
  }
}