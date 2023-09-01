import 'package:flutter/material.dart';
import 'package:practice/counter_page.dart';
import 'package:practice/time_page.dart';
import 'package:practice/to_do.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practice App',
      theme: ThemeData.dark(useMaterial3: true),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Practice'),
          centerTitle: true,
          bottom: const TabBar(tabs: [
            Tab(text: 'Time'),
            Tab(text: 'Counter'),
            Tab(text: 'Todo'),
          ]),
        ),
        body: const TabBarView(
          children: [
            TimePage(),
            CounterPage(),
            TodoPage(),
          ],
        ),
      ),
    );
  }
}

