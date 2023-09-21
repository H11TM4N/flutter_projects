import 'package:flutter/material.dart';

class ButtonConversion extends StatefulWidget {
  const ButtonConversion({super.key});

  @override
  State<ButtonConversion> createState() => _ButtonConversionState();
}

class _ButtonConversionState extends State<ButtonConversion> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 600),
              width: isExpanded ? 200 : 80.0,
              height: isExpanded ? 45 : 60.0,
              decoration: isExpanded
                  ? BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(30.0),
                    )
                  : BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
              child: isExpanded
                  ? const Center(
                      child: Text(
                        'Added to cart',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    )
                  : const Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
