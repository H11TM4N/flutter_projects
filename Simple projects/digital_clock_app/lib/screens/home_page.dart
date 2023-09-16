import 'package:flutter/material.dart';
import 'main_screens/alarm_screen.dart';
import 'main_screens/bedtime_screen.dart';
import 'main_screens/clock_screen.dart';
import 'main_screens/stopwatch_screen.dart';
import 'main_screens/timer_screen.dart';

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
        type: BottomNavigationBarType.fixed,
        currentIndex: currentPage,
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white70,
        showUnselectedLabels: true,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.alarm),
            label: 'Alarm',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time_rounded),
            label: 'Clock',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hourglass_bottom_outlined),
            label: 'Timer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timer_outlined),
            label: 'Stopwatch',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bed),
            label: 'Bedtime',
          ),
        ],
      ),
    );
  }
}
