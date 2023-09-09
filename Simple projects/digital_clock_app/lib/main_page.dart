import 'package:digital_clock_app/clock_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    int currentPage = 0;

    List<Widget> pages = [
      const ClockScreen(),
    ];

    return BottomNavigationBar(
      currentIndex: currentPage,
      onTap: (value) {},
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.alarm_add_outlined),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.timer_10_outlined),
        ),
      ],
    );
  }
}
