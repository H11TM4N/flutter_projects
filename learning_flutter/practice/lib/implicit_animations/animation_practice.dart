import 'package:flutter/material.dart';
import 'dart:math';

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
      appBar: AppBar(
        title: const Text('Animated container'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
            ],
          ),
        ),
      ),
    );
  }
}
