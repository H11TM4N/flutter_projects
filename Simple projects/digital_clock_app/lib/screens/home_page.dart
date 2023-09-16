import 'package:digital_clock_app/provider/bottom_nav_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavBarProvider bottomNavbarProvider =
        Provider.of<BottomNavBarProvider>(context);
    return Scaffold(
      body: IndexedStack(
        index: bottomNavbarProvider.currentPage,
        children: bottomNavbarProvider.pages,
      ),
      bottomNavigationBar: bottomNavbarProvider.bottomNavBar(),
    );
  }
}
