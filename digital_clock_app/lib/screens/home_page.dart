import 'package:digital_clock_app/providers/clock_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ClockScreen extends StatelessWidget {
  const ClockScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ClockProvider clockProvider = Provider.of<ClockProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Clock',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              clockProvider.currentTime,
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.21,
                color: Colors.white,
              ),
            ),
            Text(
              clockProvider.currentDate,
              style: const TextStyle(
                fontSize: 25.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
