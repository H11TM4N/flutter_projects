import 'package:flutter/material.dart';

class BodyPage extends StatefulWidget {
  const BodyPage({super.key});

  @override
  State<BodyPage> createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  ElevatedButton elevatedButton = ElevatedButton(
    style: ElevatedButton.styleFrom(
      shape: const ContinuousRectangleBorder(),
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 28),
    ),
    onPressed: () {},
    child: const Text(
      '7',
      style: TextStyle(fontSize: 30),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  '0',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 100),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              
            ],
          ),
        ],
      ),
    );
  }
}
