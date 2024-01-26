import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final Widget mobileScreen;
  final Widget webScreen;
  const HomePage({
    super.key,
    required this.mobileScreen,
    required this.webScreen,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return webScreen;
        } else {
          return mobileScreen;
        }
      },
    );
  }
}
