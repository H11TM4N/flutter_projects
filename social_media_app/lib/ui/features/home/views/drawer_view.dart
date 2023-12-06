import 'package:flutter/material.dart';
import 'package:social_media_app/common/common.dart';
import 'package:social_media_app/ui/features/authentication/controller/auth_controller.dart';
import 'package:social_media_app/ui/features/pages.dart';
import 'package:social_media_app/ui/widgets/widgets.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final authController = AuthController();
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
          DrawerTile(
            text: 'H O M E',
            icon: Icons.home,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          DrawerTile(
            text: 'P R O F I L E',
            icon: Icons.person_2,
            onTap: () {
              popAndNavigate(context, ProfilePage.routeName);
            },
          ),
          DrawerTile(
            text: 'U S E R S',
            icon: Icons.group,
            onTap: () {
              popAndNavigate(context, UsersPage.routeName);
            },
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: DrawerTile(
              text: 'L O G O U T',
              icon: Icons.logout,
              onTap: () {
                authController.logoutUser(context: context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
