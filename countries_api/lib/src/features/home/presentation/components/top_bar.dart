import 'package:countries_api/src/features/theme/controllers/theme_controller.dart';
import 'package:countries_api/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    ThemeController themeController = Get.put(ThemeController());
    return Card(
      margin: EdgeInsets.zero,
      child: Container(
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
            GetBuilder<ThemeController>(
              builder: (_) {
                return BounceInAnimation(
                  onTap: () {
                    // Get.changeTheme(Get.isDarkMode ? lightTheme : darkTheme);
                    themeController.toggleTheme();
                  },
                  child: SizedBox(
                    width: 120,
                    child: Center(
                      child: Row(
                        children: [
                          Icon(Get.isDarkMode
                              ? FontAwesomeIcons.moon
                              : FontAwesomeIcons.sun),
                          const XBox(10),
                          Text(Get.isDarkMode ? 'Dark mode' : 'Light mode'),
                        ],
                      ),
                    ),
                  ),
                );
              }
            )
          ],
        ),
      ),
    );
  }
}
