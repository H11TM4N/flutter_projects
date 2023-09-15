import 'package:digital_clock_app/utils/popup_menu_button.dart';
import 'package:flutter/material.dart';

class BedtimeScreen extends StatelessWidget {
  const BedtimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [popupMenuButton()],
        title: const Text('Bedtime'),
      ),
    );
  }
}
