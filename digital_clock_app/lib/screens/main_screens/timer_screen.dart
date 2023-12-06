import 'package:digital_clock_app/providers/timer_provider.dart';
import 'package:digital_clock_app/utils/popup_menu_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TimerScreen extends StatelessWidget {
  const TimerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    TimerProvider timerProvider = Provider.of<TimerProvider>(context);
    SizedBox elevatedButton(String text, buttonheight, Color butttonColor) {
      return SizedBox(
        height: mediaQueryData.size.height * 0.1091 * buttonheight,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: butttonColor,
              shape: const CircleBorder(),
            ),
            onPressed: () {
              timerProvider.onPressedFunc(text);
            },
            child: Text(
              text,
              style: const TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        actions: [popupMenuButton()],
        title: const Text('Timer'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          timerProvider.sizedBox(mediaQueryData.size.height * 0.15),
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
                      elevatedButton(
                          'xx', 1, const Color.fromRGBO(51, 124, 207, 29)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: timerProvider.elevatedButton(),
              ),
              SizedBox(
                height: mediaQueryData.size.height * 0.15,
                child: timerProvider.floatingActionButton(),
              ),
              const Spacer(),
              const Spacer(),
              const Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
