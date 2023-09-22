import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1500));
    slideAnimation = Tween(
      begin: const Offset(-1, -1),
      end: Offset.zero,
    ).animate(animationController);

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SlideTransition(
        position: slideAnimation,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: 'Enter your username'),
            ),
            const SizedBox(height: 20),
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
      ),
    );
  }
}
