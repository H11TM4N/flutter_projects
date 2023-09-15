import 'package:flutter/material.dart';

class TodoProvider extends ChangeNotifier {
  List listOfTasks = [];
  TextEditingController textInput = TextEditingController();
  List<bool> checkBoxes = [];
  List<bool> strikeThroughList = [];

  void addTask(String value) {
    listOfTasks.add(value);
    checkBoxes.add(false);
    strikeThroughList.add(false);
    notifyListeners();
  }

  void removeTask(int index) {
    listOfTasks.removeAt(index);
    checkBoxes.removeAt(index);
    strikeThroughList.removeAt(index);
    notifyListeners();
  }

  void checkBoxToggle(int index) {
    checkBoxes[index] = !checkBoxes[index];
    notifyListeners();
  }

  void strikeThrough(int index) {
    strikeThroughList[index] = !strikeThroughList[index];
    notifyListeners();
  }
}
