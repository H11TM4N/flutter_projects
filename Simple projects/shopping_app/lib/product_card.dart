import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  const ProductCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(260, 240, 253, 1),
      child: const Column(
        children: [
          Text('data')
        ],
      ),
    );
  }
}