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
      backgroundColor: Theme.of(context).colorScheme.background,
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 500) {
            return mobilePage;
          } else {
            return webPage;
          }
        },
      ),
    );
  }
}
