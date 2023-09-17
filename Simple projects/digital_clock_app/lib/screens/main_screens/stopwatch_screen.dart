import 'package:digital_clock_app/providers/stopwatch_provider.dart';
import 'package:digital_clock_app/utils/popup_menu_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StopwatchScreen extends StatelessWidget {
  const StopwatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    StopWatchProvider stopWatchProvider =
        Provider.of<StopWatchProvider>(context);

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
            stopWatchProvider.streamBuilder(),
            const SizedBox(
              height: 150,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                stopWatchProvider.elevatedButton(Icons.refresh),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .43,
                  child: Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: stopWatchProvider.floatingActionButton(),
                    ),
                  ),
                ),
                stopWatchProvider.elevatedButton(Icons.timer_sharp)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
