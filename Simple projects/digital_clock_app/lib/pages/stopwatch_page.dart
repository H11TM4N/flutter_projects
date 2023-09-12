import 'package:digital_clock_app/popup_menu_button.dart';
import 'package:flutter/material.dart';

class StopwatchScreen extends StatelessWidget {
  const StopwatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          popupMenuButton
        ],
        title: const Text('Stopwatch'),
      ),
    );
  }
}
