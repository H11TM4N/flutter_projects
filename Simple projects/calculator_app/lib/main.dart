import 'package:flutter/material.dart';

void main() => runApp(const CalculatorApp());

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const CalculatorScreen(),
      theme: ThemeData.dark(useMaterial3: true),
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
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end, // Pushes buttons to the bottom
          children: <Widget>[
            // Display the calculator input and output here
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                '0',
                style: TextStyle(fontSize: 36),
              ),
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
      // Buttons at the bottom
    );
  }
}

class CalculatorButtonRow extends StatelessWidget {
  final List<String> buttons;

  const CalculatorButtonRow(this.buttons, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: buttons.map((buttonText) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: CalculatorButton(buttonText),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  final String text;

  const CalculatorButton(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          // Handle button click here
        },
        style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(23), textStyle: const TextStyle(fontSize: 23)),
        child: Text(text),
      ),
    );
  }
}
