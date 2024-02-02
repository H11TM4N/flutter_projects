import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Page 3'),
        ],
      ),
    );
  }
}
