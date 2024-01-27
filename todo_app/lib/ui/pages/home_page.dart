import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final Widget mobilePage;
  final Widget webPage;
  const HomePage({
    super.key,
    required this.mobilePage,
    required this.webPage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return mobilePage;
          } else {
            return webPage;
          }
        },
      ),
    );
  }
}
