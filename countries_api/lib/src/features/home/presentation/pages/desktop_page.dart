import 'package:countries_api/src/features/home/presentation/components/components.dart';
import 'package:countries_api/src/shared/shared.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';

class DesktopPage extends HookWidget {
  const DesktopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: theme.background,
      body: ListView(
        children: const [
          TopBar(),
          SearchAndFilter(isMobile: false),
          CountryList(currentScreen: CurrentScreen.desktop),
        ],
      ),
    );
  }
}
