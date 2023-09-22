import 'package:flutter/material.dart';

class ListAnimation extends StatefulWidget {
  const ListAnimation({super.key});

  @override
  State<ListAnimation> createState() => _ListAnimationState();
}

class _ListAnimationState extends State<ListAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slideTransition;
  bool toggle = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _slideTransition = Tween(
      begin: const Offset(-1, -1),
      end: Offset.zero,
    ).animate(_animationController);

    _animationController.forward();
  }

  void toggleButton() {
    if (toggle == true) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
    toggle = !toggle;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Animation'),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return SlideTransition(
            position: _slideTransition,
            child: ListTile(
              title: Text('Hello World, Jeremiah. ${index.toString()}'),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            toggleButton();
          });
        },
        child: const Icon(Icons.done),
      ),
    );
  }
}
