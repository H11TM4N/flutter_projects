import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  void addition() {
    setState(() {
      counter++;
    });
  }
  
  void subtraction() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Simple Counter')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$counter',
            style: const TextStyle(fontSize: 30),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: FloatingActionButton(
              onPressed: () {
                return addition();
              },
              elevation: 4,
              child: const Icon(Icons.add),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: FloatingActionButton(
              onPressed: () {
                return subtraction();
              },
              elevation: 4,
              child: const Icon(Icons.remove),
            ),
          ),
        ],
      ),
    );
  }
}
