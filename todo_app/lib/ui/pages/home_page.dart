import 'package:flutter/material.dart';
import 'package:todo_app/ui/pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  void _onTap(value) {
    setState(() {
      _currentIndex = value;
    });
  }

  final List _pages = [
    const HomeScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        child: BottomNavigationBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          currentIndex: _currentIndex,
          onTap: _onTap,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.list_alt_rounded), label: 'tasks'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile')
          ],
        ),
      ),
    );
  }
}
