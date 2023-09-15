import 'package:digital_clock_app/utils/popup_menu_button.dart';
import 'package:flutter/material.dart';

class StopwatchScreen extends StatefulWidget {
  const StopwatchScreen({super.key});

  @override
  State<StopwatchScreen> createState() => _StopwatchScreenState();
}

class _StopwatchScreenState extends State<StopwatchScreen> {
  bool shape = false;

  void shapeChange() {
    setState(() {
      shape = !shape;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [popupMenuButton()],
        title: const Text('Stopwatch'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .43,
                  child: Expanded(
                    child: FloatingActionButton.large(
                      backgroundColor: const Color.fromARGB(255, 149, 216, 248),
                      shape: shape
                          ? const CircleBorder()
                          : RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                              side: const BorderSide()),
                      child: Icon(
                        shape ? Icons.play_arrow : Icons.pause,
                        color: Colors.black,
                        size: 25,
                      ),
                      onPressed: () {
                        shapeChange();
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
