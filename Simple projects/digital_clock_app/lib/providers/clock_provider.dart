import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ClockProvider extends ChangeNotifier {
  String currentTime = ' ';
  String currentDate = ' ';

  ClockProvider() {
    updateTime();
  }

  void updateTime() {
    currentTime = DateFormat('HH:mm:ss').format(DateTime.now());
    currentDate = DateFormat('EEE, MMM d').format(DateTime.now());

    Future.delayed(const Duration(seconds: 1), updateTime);
    notifyListeners();
  }
}
