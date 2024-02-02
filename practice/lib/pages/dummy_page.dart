import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class DummyPage extends StatelessWidget {
  const DummyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dummy'),
      ),
      body: Center(
        child: SizedBox(
          child: CachedNetworkImage(
            imageUrl: 'https://via.placeholder.com/300',
            progressIndicatorBuilder: (context, url, download) {
              if (download.progress != null) {
                final percent = download.progress! * 100;
                return Text('$percent done loading');
              }
              return Text('loaded $url');
            },
          ),
        ),
      ),
    );
  }
}
