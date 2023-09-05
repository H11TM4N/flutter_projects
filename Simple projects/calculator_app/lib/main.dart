import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

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

class CalculatorScreen extends StatefulWidget {
  //Calculator screen
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String equation = '0';
  String result = '0';
  String expression = "";
  double ssize = 38;
  double resultSize = 48;

  void onPressedFunc(String buttonText) {
    setState(() {
      if (buttonText == "AC") {
        equation = "0";
        result = "0";
      } else if (buttonText == "C") {
        equation = equation.substring(0, equation.length - 1);
      } else if (buttonText == "=") {
        result = equation;
      } else {
        if (equation == "0") {
          equation = buttonText;
        } else {
          equation = equation + buttonText;
        }
      }
    });
  }

  //************************************
  Widget buildButton(String buttonText, double buttonheight) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.1091 * buttonheight,
      child: ElevatedButton(
        onPressed: () {
          return onPressedFunc(buttonText);
        },
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
            elevation: 9,
            padding: const EdgeInsets.all(16.0)),
        child: Text(
          buttonText,
          style: const TextStyle(fontSize: 25),
        ),
      ),
    );
  }

  //*************************************
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
            child: Text(equation, style: TextStyle(fontSize: ssize)),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.fromLTRB(8, 30, 10, 0),
            child: Text(result, style: TextStyle(fontSize: resultSize)),
          ),
          const Divider(
            thickness: 0,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 1,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Table(
                    children: [
                      TableRow(
                        children: [
                          buildButton('AC', 2),
                          buildButton('(', 2),
                          buildButton(')', 2),
                          buildButton('C', 2),
                        ],
                      ),
                      TableRow(
                        children: [
                          buildButton('7', 2),
                          buildButton('8', 2),
                          buildButton('9', 2),
                          buildButton('/', 2),
                        ],
                      ),
                      TableRow(
                        children: [
                          buildButton('4', 2),
                          buildButton('5', 2),
                          buildButton('6', 2),
                          buildButton('x', 2),
                        ],
                      ),
                      TableRow(
                        children: [
                          buildButton('1', 2),
                          buildButton('2', 2),
                          buildButton('3', 2),
                          buildButton('-', 2),
                        ],
                      ),
                      TableRow(
                        children: [
                          buildButton('0', 2),
                          buildButton('.', 2),
                          buildButton('=', 2),
                          buildButton('+', 2),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
