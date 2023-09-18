import 'package:flutter/material.dart';
import 'package:practice/Provider/counter_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    CounterProvider counterProvider = Provider.of<CounterProvider>(context);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${counterProvider.counter}'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              counterProvider.elevatedButton('+', counterProvider.counter),
              counterProvider.elevatedButton('-', counterProvider.counter),
            ],
          ),
        ],
      ),
    );
  }
}
