import 'package:flutter/material.dart';

void main() => runApp(const CalculatorApp());

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const CalculatorScreen(),
      theme: ThemeData.dark(useMaterial3: true),
    );
  }
}

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

class CalculatorButton extends StatelessWidget {
  final String text;
  const CalculatorButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // onpressed action
      },
      child: Text(text),
    );
  }
}