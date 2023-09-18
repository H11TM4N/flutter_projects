import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int counter = 0;
  ElevatedButton elevatedButton(text, int counter) {
    return ElevatedButton(
      onPressed: () {
        text == '+' ? increment() : decrement();
      },
      child: Text(text),
    );
  }

  void increment() {
    counter++;
    notifyListeners();
  }

  void decrement() {
    counter--;
    notifyListeners();
  }
}
