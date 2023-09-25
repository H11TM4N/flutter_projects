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
        return Image.network(images[index].url);
      },
    );
  }
}
