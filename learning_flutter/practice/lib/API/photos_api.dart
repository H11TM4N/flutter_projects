import 'package:flutter/material.dart';

class PhotosApi extends StatelessWidget {
  const PhotosApi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
