import 'package:countries_api/src/features/home/presentation/components/components.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';

class MobilePage extends HookWidget {
  const MobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: theme.background,
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TopBar(),
              SearchAndFilter(isMobile: true),
              CountryList(),
            ],
          ),
        ),
      ),
    );
  }
}
