import 'package:flutter/material.dart';

class StopWatchProvider extends ChangeNotifier {
  bool shape = false;

  void shapeChange() {
    shape = !shape;
    notifyListeners();
  }
}
