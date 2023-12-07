import 'package:flutter/material.dart';

class ConnectPage extends StatelessWidget {
  static const routeName = '/connectPage';
  const ConnectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Connect Page'),
      ),
    );
  }
}
