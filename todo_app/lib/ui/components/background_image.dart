import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  final bool isMobile;
  const BackgroundImage({
    super.key,
    required this.isMobile,
  });

  @override
  Widget build(BuildContext context) {
    if (isMobile) {
      return Image.asset('assets/images/bg-mobile-light.jpg');
    } else {
      return Image.asset('assets/images/bg-desktop-light.jpg');
    }
  }
}
