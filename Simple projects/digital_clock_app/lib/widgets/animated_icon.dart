import 'package:flutter/material.dart';

class AnimatedIcon extends StatelessWidget {
  final IconData iconData;
  final bool isSelected;
  final VoidCallback onTap;

  const AnimatedIcon({
    super.key,
    required this.iconData,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: isSelected ? Colors.blue : Colors.transparent,
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }
}
