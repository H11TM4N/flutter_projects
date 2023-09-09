import 'package:digital_clock_app/clock_page.dart';
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
    const ClockScreen(),
    const TimerScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          
        ],
      ),
    );
  }
}
