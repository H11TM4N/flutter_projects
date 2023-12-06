import 'package:flutter/material.dart';

class TimerProvider extends ChangeNotifier {
  String text = '';
  SizedBox sizedBox(double height) => SizedBox(
        height: height,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w300),
          ),
        ),
      );

  void onPressedFunc(String buttonText) {
    if (buttonText == 'xx') {
      text = text.substring(0, text.length - 1);
    } else {
      if (text == "0") {
        text = buttonText;
      } else {
        text = text + buttonText;
      }
    }
    notifyListeners();
  }

  FloatingActionButton floatingActionButton() {
    return FloatingActionButton.large(
      backgroundColor: const Color.fromARGB(255, 149, 216, 248),
      shape: const CircleBorder(),
      child: const Icon(
        Icons.add,
        color: Colors.black,
        size: 25,
      ),
      onPressed: () {
        notifyListeners();
      },
    );
  }

  ElevatedButton elevatedButton() => ElevatedButton(
        onPressed: () {
          notifyListeners();
        },
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: const Color.fromARGB(255, 27, 86, 29),
            elevation: 5,
            minimumSize: const Size(50, 50)),
        child: const Icon(
          Icons.delete,
          color: Colors.white,
        ),
      );
}
