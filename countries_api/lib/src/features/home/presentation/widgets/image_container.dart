import 'package:cached_network_image/cached_network_image.dart';
import 'package:countries_api/src/shared/shared.dart';
import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final String imageUrl;
  const ImageContainer({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200..dy,
      child: Center(
        child: CachedNetworkImage(
          fit: BoxFit.fitWidth,
          imageUrl: imageUrl,
          progressIndicatorBuilder: (context, url, download) {
            if (download.progress != null) {
              final percent = download.progress! * 100;
              return Text('$percent done loading');
            }
            return Text('loaded $url');
          },
        ),
      ),
    );
  }
}
