import 'package:flutter/material.dart';

import '../image_models.dart';

class ImageList extends StatelessWidget {
  const ImageList(this.images, {super.key});
  final List<ImageModel> images;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, index) {
        return buildImage(images[index]);
      },
    );
  }
}

Widget buildImage(ImageModel image) {
  return Container(
    margin: const EdgeInsets.all(8.0),
    padding: const EdgeInsets.all(20.0),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey),
    ),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Image.network(image.url),
        ),
        Text(image.title),
      ],
    ),
  );
}
