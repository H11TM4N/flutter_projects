import 'package:flutter/material.dart';
import '../screens/main_screens/alarm_screen.dart';
import '../screens/main_screens/bedtime_screen.dart';
import '../screens/main_screens/clock_screen.dart';
import '../screens/main_screens/stopwatch_screen.dart';
import '../screens/main_screens/timer_screen.dart';

class BottomNavBarProvider extends ChangeNotifier {
  int currentPage = 0;

  List<Widget> pages = [
    const AlarmScreen(),
    const ClockScreen(),
    const TimerScreen(),
    const StopwatchScreen(),
    const BedtimeScreen(),
  ];

  BottomNavigationBar bottomNavBar(int currentPage) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentPage,
      fixedColor: Colors.white,
      unselectedItemColor: Colors.white70,
      showUnselectedLabels: true,
      onTap: (value) {
        currentPage = value;
        notifyListeners();
      },
      items: [
        barItem(Icons.alarm, 'Alarm'),
        barItem(Icons.access_time_rounded, 'Clock'),
        barItem(Icons.hourglass_bottom_outlined, 'Timer'),
        barItem(Icons.timer_outlined, 'Stopwatch'),
        barItem(Icons.bed, 'Bedtime'),
      ],
    );
  }

  BottomNavigationBarItem barItem(IconData icon, String label) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: 'Alarm',
    );
  }
}
