import 'package:digital_clock_app/alarm_page.dart';
import 'package:digital_clock_app/bedtime_page.dart';
import 'package:digital_clock_app/clock_page.dart';
import 'package:digital_clock_app/stopwatch.dart';
import 'package:digital_clock_app/timer_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPage = 0;
  List<Widget> pages = [
    const AlarmScreen(),
    const ClockScreen(),
    const TimerScreen(),
    const StopwatchScreen(),
    const BedtimeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.lock_clock_outlined,
            ),
            label: 'Alarm',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timer_3_select),
            label: 'Clock',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timer_3_select),
            label: 'Timer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timer_3_select),
            label: 'Stopwatch',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bed_outlined),
            label: 'Bedtime',
          ),
        ],
      ),
    );
  }
}
