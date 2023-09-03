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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator App'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('0', style: TextStyle(fontSize: 40),),
                ),
              ],
            ),
            // add button rows here
            CalculatorButtonRow(buttonList: ['AC', '(', ')', '%']),
            CalculatorButtonRow(buttonList: ['7', '8', '9', '/']),
            CalculatorButtonRow(buttonList: ['4', '5', '6', 'x']),
            CalculatorButtonRow(buttonList: ['1', '2', '3', '-']),
            CalculatorButtonRow(buttonList: ['0', '.', '=', '+']),
          ],
        ),
      ),
    );
  }
}

class CalculatorButtonRow extends StatelessWidget {
  final List<String> buttonList;
  const CalculatorButtonRow({super.key, required this.buttonList});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: buttonList.map((buttonText) {
        return CalculatorButton(text: buttonText);
      }).toList()
    );
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
