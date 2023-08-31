import 'package:flutter/material.dart';

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

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: 'Enter your username'),
          ),
          const TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock, size: 20),
                hintText: 'Enter your password'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: 'Enter your username'),
          ),
          const TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock, size: 20),
                hintText: 'Enter your password'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Register'),
          ),
        ],
      ),
    );
  }
}
