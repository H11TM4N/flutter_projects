import 'package:digital_clock_app/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    BottomNavBarProvider bottomNavbarProvider =
        Provider.of<BottomNavBarProvider>(context);
    return Scaffold(
      body: IndexedStack(
        index: bottomNavbarProvider.currentPage,
        children: bottomNavbarProvider.pages,
      ),
      bottomNavigationBar: bottomNavbarProvider.bottomNavBar(
        bottomNavbarProvider.currentPage,
      ),
    );
  }
}
