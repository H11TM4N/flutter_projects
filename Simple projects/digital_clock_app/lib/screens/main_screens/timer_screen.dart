import 'package:digital_clock_app/utils/popup_menu_button.dart';
import 'package:flutter/material.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({super.key});

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  SizedBox elevatedButton(String text, buttonheight, Color butttonColor) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1091 * buttonheight,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: butttonColor,
            shape: const CircleBorder(),
          ),
          onPressed: () {},
          child: Text(
            text,
            style: const TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [popupMenuButton()],
        title: const Text('Timer'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: const Center(child: Text('00h 00m 00s')),
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Table(
                children: [
                  TableRow(
                    children: [
                      elevatedButton('1', 1, Colors.transparent),
                      elevatedButton('2', 1, Colors.transparent),
                      elevatedButton('3', 1, Colors.transparent),
                    ],
                  ),
                  TableRow(
                    children: [
                      elevatedButton('4', 1, Colors.transparent),
                      elevatedButton('5', 1, Colors.transparent),
                      elevatedButton('6', 1, Colors.transparent),
                    ],
                  ),
                  TableRow(
                    children: [
                      elevatedButton('7', 1, Colors.transparent),
                      elevatedButton('8', 1, Colors.transparent),
                      elevatedButton('9', 1, Colors.transparent),
                    ],
                  ),
                  TableRow(
                    children: [
                      elevatedButton('00', 1, Colors.transparent),
                      elevatedButton('0', 1, Colors.transparent),
                      elevatedButton('xx', 1, const Color.fromRGBO(51, 124, 207, 29)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
          ),
        ],
      ),
    );
  }
}
