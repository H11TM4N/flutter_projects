import 'package:flutter/material.dart';

import 'login_page.dart';
import 'register_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('JER3MIAH'),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(child: Text('Login')),
              Tab(child: Text('Register')),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            LoginPage(),
            RegisterPage(),
          ],
        ),
      ),
    );
  }
}
