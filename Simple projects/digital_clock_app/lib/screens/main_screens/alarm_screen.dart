import 'package:digital_clock_app/utils/popup_menu_button.dart';
import 'package:flutter/material.dart';

class AlarmScreen extends StatelessWidget {
  const AlarmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [popupMenuButton()],
        title: const Text('Alarm'),
      ),
    );
  }
}
