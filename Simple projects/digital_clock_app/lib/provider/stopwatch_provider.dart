import 'package:flutter/material.dart';

class StopWatchProvider extends ChangeNotifier {
  bool shape = false;

  int timerValue = 0;
  bool paused = true;
  final Stream<int> periodicStream = Stream.periodic(
    const Duration(milliseconds: 1000),
    (i) => i,
  );
  int previousStreamValue = 0;
  StreamBuilder streamBuilder() {
    return StreamBuilder(
      stream: periodicStream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data != previousStreamValue) {
            previousStreamValue = snapshot.data!;
            if (!paused) {
              timerValue++;
            }
          }
        }
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
            '$timerValue',
            style: const TextStyle(fontSize: 40),
          )),
        );
      },
    );
  }

  void shapeChange() {
    shape = !shape;
    notifyListeners();
  }

  FloatingActionButton floatingActionButton() {
    return FloatingActionButton.large(
      backgroundColor: const Color.fromARGB(255, 149, 216, 248),
      shape: shape
          ? RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25), side: const BorderSide())
          : const CircleBorder(),
      child: Icon(
        shape ? Icons.pause : Icons.play_arrow,
        color: Colors.black,
        size: 25,
      ),
      onPressed: () {
        shapeChange();
        paused = !paused;
        notifyListeners();
      },
    );
  }
}
