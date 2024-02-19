import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobilePage;
  final Widget tabletPage;
  final Widget iPadPage;
  final Widget desktopPage;

  const ResponsiveLayout({
    super.key,
    required this.mobilePage,
    required this.tabletPage,
    required this.iPadPage,
    required this.desktopPage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return mobilePage;
          } else if (constraints.maxWidth < 900) {
            return tabletPage;
          } else if (constraints.maxWidth < 1100) {
            return iPadPage;
          } else {
            return desktopPage;
          }
        },
      ),
    );
  }
}
