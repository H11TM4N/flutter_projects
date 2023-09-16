import 'package:flutter/material.dart';
import '../screens/main_screens/alarm_screen.dart';
import '../screens/main_screens/bedtime_screen.dart';
import '../screens/main_screens/clock_screen.dart';
import '../screens/main_screens/stopwatch_screen.dart';
import '../screens/main_screens/timer_screen.dart';

class BottomNavBarProvider extends ChangeNotifier {
  int _currentPage = 0;
  int get currentPage => _currentPage;

  List<Widget> pages = [
    const AlarmScreen(),
    const ClockScreen(),
    const TimerScreen(),
    const StopwatchScreen(),
    const BedtimeScreen(),
  ];

  BottomNavigationBar bottomNavBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentPage,
      fixedColor: Colors.white,
      unselectedItemColor: Colors.white70,
      showUnselectedLabels: true,
      onTap: (value) {
        _currentPage = value;
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
      label: label,
    );
  }
}
