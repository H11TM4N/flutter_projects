import 'package:countries_api/src/features/home/presentation/components/components.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';

class TabletPage extends HookWidget {
  const TabletPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: theme.background,
      body: ListView(
        children: const [
          TopBar(),
          SearchAndFilter(isMobileOrTablet: true)
        ],
      ),
    );
  }
}
