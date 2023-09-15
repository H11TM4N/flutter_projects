import 'package:flutter/material.dart';
import 'package:practice/Provider/counter_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    CounterProvider counterProvider = Provider.of<CounterProvider>(context);

    ElevatedButton elevatedButton(text, int counter) {
      return ElevatedButton(
        onPressed: () {
          text == '+'
              ? counterProvider.increment()
              : counterProvider.decrement();
        },
        child: Text(text),
      );
    }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${counterProvider.counter}'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              elevatedButton('+', counterProvider.counter),
              elevatedButton('-', counterProvider.counter),
            ],
          ),
        ],
      ),
    );
  }
}
