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

class CalculatorScreen extends StatefulWidget {
  //Calculator screen
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  //************************************
  Widget buildButton(String buttonText, Color buttonColor, double fonttSize) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.1,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          elevation: 3,
        ),
        child: Text(
          buttonText,
          style: TextStyle(fontSize: fonttSize),
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
        children: [
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
            child: const Text('0', style: TextStyle(fontSize: 38)),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.fromLTRB(8, 30, 10, 0),
            child: const Text('0', style: TextStyle(fontSize: 48)),
          ),
          const Divider(),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
                child: Table(
                  children: const [
                    TableRow(
                      
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
