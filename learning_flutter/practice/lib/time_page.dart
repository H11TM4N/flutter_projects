import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class TimePage extends StatefulWidget {
  const TimePage({super.key});

  @override
  State<TimePage> createState() => _TimePageState();
}

class _TimePageState extends State<TimePage> {
  String currentTime = '';
  String currentDate = '';

  @override
  void initState() {
    super.initState();
    updateTime();
  }

  void updateTime() {
    setState(() {
      currentTime = DateFormat('HH:mm:ss').format(DateTime.now());
      currentDate = DateFormat('EEE, MMM dd yyyy').format(DateTime.now());
      Future.delayed(const Duration(seconds: 1), updateTime);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Digital Clock')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              currentTime,
              style: const TextStyle(
                fontSize: 60,
                color: Colors.white,
              ),
            ),
          ),
          Center(
            child: Text(
              currentDate,
              style: const TextStyle(
                fontSize: 34,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}