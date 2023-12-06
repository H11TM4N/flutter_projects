import 'package:digital_clock_app/providers/clock_provider.dart';
import 'package:digital_clock_app/providers/stopwatch_provider.dart';
import 'package:digital_clock_app/providers/timer_provider.dart';
import 'package:digital_clock_app/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/bottom_nav_provider.dart';

void main() {
  runApp(const ClockApp());
}

class ClockApp extends StatelessWidget {
  const ClockApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => StopWatchProvider()),
        ChangeNotifierProvider(create: (context) => ClockProvider()),
        ChangeNotifierProvider(create: (context) => BottomNavBarProvider()),
        ChangeNotifierProvider(create: (context) => TimerProvider())
      ],
      child: MaterialApp(
        title: "Digital Clock App",
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(
          useMaterial3: true,
        ),
        home: const MainPage(),
      ),
    );
  }
}
