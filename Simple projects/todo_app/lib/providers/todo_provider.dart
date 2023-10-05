import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';

class TodoProvider extends ChangeNotifier {
  List<Task> listOfTasks = [];
  TextEditingController textInput = TextEditingController();
  List<bool> checkBoxes = [];
  List<bool> strikeThroughList = [];

  void addTask(String value) {
    listOfTasks.add(Task(title: value, isDone: false));
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
