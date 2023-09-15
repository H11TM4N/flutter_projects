import 'package:digital_clock_app/screens/alarm_screen.dart';
import 'package:digital_clock_app/screens/bedtime_screen.dart';
import 'package:digital_clock_app/screens/clock_screen.dart';
import 'package:digital_clock_app/screens/stopwatch_screen.dart';
import 'package:digital_clock_app/screens/timer_screen.dart';
import 'package:digital_clock_app/utils/popup_menu_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
