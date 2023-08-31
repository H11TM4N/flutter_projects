import 'package:flutter/material.dart';

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
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Practice'),
          centerTitle: true,
          bottom: const TabBar(tabs: [
            Tab(text: 'Time'),
            Tab(text: 'Counter'),
            Tab(text: 'Jerry'),
            Tab(text: 'Lolly'),
          ]),
        ),
        body: const TabBarView(
          children: [
            TimePage(),
            CounterPage()
            
          ],
        ),
      ),
    );
  }
}

class TimePage extends StatelessWidget {
  const TimePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
