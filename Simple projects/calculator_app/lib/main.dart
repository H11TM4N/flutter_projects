import 'package:flutter/material.dart';

void main() => runApp(const CalculatorApp());

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Display the calculator input and output here
            Text(
              '0',
              style: TextStyle(fontSize: 36),
            ),
            // Create rows of calculator buttons using widgets
            // Each button should be a separate widget
            CalculatorButtonRow(['7', '8', '9', '/']),
            CalculatorButtonRow(['4', '5', '6', 'x']),
            CalculatorButtonRow(['1', '2', '3', '-']),
            CalculatorButtonRow(['0', '.', '=', '+']),
          ],
        ),
      ),
    );
  }
}

class CalculatorButtonRow extends StatelessWidget {
  final List<String> buttons;

  const CalculatorButtonRow(this.buttons, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: buttons.map((buttonText) {
        return CalculatorButton(buttonText);
      }).toList(),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  final String text;

  const CalculatorButton(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Handle button click here
      },
      child: Text(text),
    );
  }
}
