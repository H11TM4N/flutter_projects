import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class StopWatchProvider extends ChangeNotifier {
  bool _shape = false;

  int _timerValue = 0;
  bool _paused = true;
  final Stream<int> _periodicStream = Stream.periodic(
    const Duration(milliseconds: 1000),
    (i) => i,
  );
  int previousStreamValue = 0;
  StreamBuilder streamBuilder() {
    return StreamBuilder(
      stream: _periodicStream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data != previousStreamValue) {
            previousStreamValue = snapshot.data!;
            if (!_paused) {
              _timerValue++;
            }
          }
        }
        final hours = _timerValue ~/ 3600; // 3600 seconds in an hour
        final remainingSeconds = _timerValue % 3600;
        final minutes = remainingSeconds ~/ 60; // 60 seconds in a minute
        final seconds = remainingSeconds % 60;

        // Format the time based on the values
        final formattedTime =
            '${hours > 0 ? '${hours.toString().padLeft(2, '0')}:' : ''}'
            '${minutes > 0 || hours > 0 ? '${minutes.toString().padLeft(2, '0')}:' : ''}'
            '${seconds.toString().padLeft(2, '0')}';

        return Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: const Color.fromARGB(137, 123, 119, 119),
              width: 8.0,
            ),
            color: Colors.transparent,
          ),
          child: Center(
              child: Text(
            formattedTime,
            style: const TextStyle(fontSize: 40),
          )),
        );
      },
    );
  }

  void shapeChange() {
    _shape = !_shape;
    notifyListeners();
  }

  FloatingActionButton floatingActionButton() {
    return FloatingActionButton.large(
      backgroundColor: const Color.fromARGB(255, 149, 216, 248),
      shape: _shape
          ? RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25), side: const BorderSide())
          : const CircleBorder(),
      child: Icon(
        _shape ? Icons.pause : Icons.play_arrow,
        color: Colors.black,
        size: 25,
      ),
      onPressed: () {
        shapeChange();
        _paused = !_paused;
        notifyListeners();
      },
    );
  }
}
