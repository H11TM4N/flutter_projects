import 'package:countries_api/src/features/theme/view_models/theme_view_model.dart';
import 'package:countries_api/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Card(
      child: Consumer<ThemeViewModel>(builder: (context, themeState, __) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          decoration: BoxDecoration(
            color: theme.primary,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Where in the world?',
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
              BounceInAnimation(
                onTap: () {
                  themeState.toggleTheme();
                },
                child: SizedBox(
                  width: 120,
                  child: Center(
                    child: Row(
                      children: [
                        Icon(themeState.isDarkMode
                            ? FontAwesomeIcons.moon
                            : FontAwesomeIcons.sun),
                        const XBox(10),
                        Text(
                            themeState.isDarkMode ? 'Dark mode' : 'Light mode'),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
