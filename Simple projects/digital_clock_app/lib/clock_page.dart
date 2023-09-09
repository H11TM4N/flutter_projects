import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ClockScreen extends StatefulWidget {
  const ClockScreen({super.key});

  @override
  State<ClockScreen> createState() => _ClockScreenState();
}

class _ClockScreenState extends State<ClockScreen> {
  String _currentTime = ' ';
  String _currentDate = ' ';

  @override
  void initState() {
    super.initState();
    _updateTime();
  }

  void _updateTime() {
    setState(() {
      _currentTime = DateFormat('HH:mm:ss').format(DateTime.now());
      _currentDate = DateFormat('EEE, MMM d').format(DateTime.now());
    });
    Future.delayed(const Duration(seconds: 1), _updateTime);
  }

  @override
  Widget build(BuildContext context) {
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
              _currentTime,
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.21,
                color: Colors.white,
              ),
            ),
            Text(
              _currentDate,
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
