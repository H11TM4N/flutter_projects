import 'package:flutter/material.dart';

class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              child: Column(
                children: [
                  Row(
                    children: [button(), button(), button(), button()],
                  ),
                  Row(
                    children: [button(), button(), button(), button()],
                  ),
                  Row(
                    children: [button(), button(), button(), button()],
                  ),
                  Row(
                    children: [button(), button(), button(), button()],
                  ),
                  Row(
                    children: [button(), button(), button(), button()],
                  ),
                ],
              ),
            ),
            const Text('jojoooooooo')
          ],
        ),
      ),
    );
  }
}

Widget button() {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(4.0),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          minimumSize: Size(80, 80),
          shape: const CircleBorder(),
        ),
        child: const Text('00'),
      ),
    ),
  );
}

// ElevatedButton elevatedButton = ElevatedButton(
//   onPressed: () {},
//   style: ElevatedButton.styleFrom(
//     shape: const CircleBorder(),
//   ),
//   child: const Text('00'),
// );
