import 'package:flutter/material.dart';

class TimerProvider extends ChangeNotifier {
  String text = '';
  SizedBox sizedBox(BuildContext context) => SizedBox(
        height: MediaQuery.of(context).size.height * 0.15,
        child: const Center(
          child: Text(
            '00h 00m 00s',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w300),
          ),
        ),
      );

  SizedBox elevatedButton(
      BuildContext context, buttonheight, Color butttonColor) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1091 * buttonheight,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: butttonColor,
            shape: const CircleBorder(),
          ),
          onPressed: () {
            _onPressedFunc(text);
          },
          child: Text(
            text,
            style: const TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }

  String string = '';
  void _onPressedFunc(String buttonText) {
    if (buttonText == 'XX') {
      string = string.substring(0, string.length - 1);
    } else {
      if (string == "0") {
        string = buttonText;
      } else {
        string = string + buttonText;
      }
    }
  }
}
