import 'package:flutter/material.dart';
import 'dart:math';

import 'package:practice/implicit_animations/shopping_cart.dart';

class AnimationPractice extends StatefulWidget {
  const AnimationPractice({super.key});

  @override
  State<AnimationPractice> createState() => _AnimationPracticeState();
}

class _AnimationPracticeState extends State<AnimationPractice> {
  List<Color> currentPalette = generateRandomPalette();

  static List<Color> generateRandomPalette() {
    final random = Random();
    return List.generate(
      5,
      (_) => Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1,
      ),
    );
  }

  void randomColorsfunc() {
    setState(() {
      currentPalette = generateRandomPalette();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Animated container'),
              for (Color color in currentPalette)
                AnimatedContainer(
                  duration: const Duration(milliseconds: 600),
                  color: color,
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.all(8.0),
                ),
              ElevatedButton(
                onPressed: () {
                  randomColorsfunc();
                },
                child: const Text('Animate'),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => const ButtonConversion()));
                    },
                    child: const Text('one'),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
