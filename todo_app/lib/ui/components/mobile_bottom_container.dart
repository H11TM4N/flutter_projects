import 'package:flutter/material.dart';

class MobileBottomContainer extends StatelessWidget {
  const MobileBottomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.circular(5),
        ),
        border: const Border(top: BorderSide(color: Colors.white24)),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('5 items left'),
            Text('Clear completed'),
          ],
        ),
      ),
    );
  }
}
