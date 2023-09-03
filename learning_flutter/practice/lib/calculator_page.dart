import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calculator'),),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('0'),
            ],
          ),
          
        ],
      ),
    );
  }
}

class CalculatorButtonRow extends StatelessWidget {
  const CalculatorButtonRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}