import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final animationController =
        useAnimationController(duration: const Duration(milliseconds: 1500));
    final slideAnimation = Tween(
      begin: const Offset(-1, -1),
      end: Offset.zero,
    ).animate(animationController);

    useEffect(
      () {
        animationController.forward();
        return animationController.dispose;
      },
      [animationController],
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: SlideTransition(
        position: slideAnimation,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              title: const Text('jojooooooooo'),
              tileColor: Colors.red.withOpacity(0.5),

            );
          },
        ),
      ),
    );
  }
}
