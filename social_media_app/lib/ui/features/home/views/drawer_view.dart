import 'package:flutter/material.dart';
import 'package:social_media_app/ui/widgets/widgets.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Drawer(
      backgroundColor: theme.background,
      child: Column(
        children: [
          DrawerHeader(
            child: Icon(
              Icons.favorite,
              color: theme.inversePrimary,
            ),
          ),
          const DrawerTile(text: 'H O M E', icon: Icons.home),
          const DrawerTile(text: 'P R O F I L E', icon: Icons.person_2),
          const DrawerTile(text: 'U S E R S', icon: Icons.group),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: DrawerTile(text: 'L O G O U T', icon: Icons.logout),
          ),
        ],
      ),
    );
  }
}
