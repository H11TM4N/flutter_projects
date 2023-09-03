import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('0', style: TextStyle(fontSize: 40)),
            ],
          ),
          CalculatorButtonRow(buttons: ['AC', '(', ')', '%']),
          CalculatorButtonRow(buttons: ['7', '8', '9', '/']),
          CalculatorButtonRow(buttons: ['4', '5', '6', 'x']),
          CalculatorButtonRow(buttons: ['1', '2', '3', '-']),
          CalculatorButtonRow(buttons: ['0', '.', '=', '+']),
        ],
      ),
    );
  }
}

class CalculatorButtonRow extends StatelessWidget {
  final List<String> buttons;
  const CalculatorButtonRow({super.key, required this.buttons});


  @override
  Widget build(BuildContext context) {
     List<String> buttons = [];
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: buttons.map((buttonText) => CalculatorButton(buttonText: buttonText)).toList(),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  final String buttonText;
  const CalculatorButton({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(),
      child: Text(buttonText),
    );
  }
}
