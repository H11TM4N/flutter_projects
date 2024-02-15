import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BounceInAnimation extends StatefulWidget {
  final Widget child;
  final VoidCallback onTap;

  const BounceInAnimation({
    super.key,
    required this.child,
    required this.onTap,
  });

  @override
  State<BounceInAnimation> createState() => _BounceInAnimationState();
}

class _BounceInAnimationState extends State<BounceInAnimation>
    with SingleTickerProviderStateMixin {
  late Animation<double> _scale;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _scale = Tween<double>(begin: 1.0, end: 0.9)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.ease));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Listener(
        onPointerDown: (PointerDownEvent event) {
          _controller.forward();
        },
        onPointerUp: (PointerUpEvent event) {
          _controller.reverse();
          widget.onTap();
        },
        child: ScaleTransition(
          scale: _scale,
          child: widget.child,
        ),
      ),
    );
  }
}
