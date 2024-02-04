import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:practice/src/app_injection_container.dart';
import 'package:practice/src/features/navigation/route_names.dart';
import 'package:practice/src/features/practice_app/apis/firebase_api.dart';
import 'package:practice/src/features/practice_app/utils/flashbar.dart';
import 'package:practice/src/features/practice_app/utils/tile_container.dart';
import 'package:practice/src/shared/widgets/animated_column.dart';

class SettingPage extends StatelessWidget {
  final String title;
  const SettingPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: AppAnimatedColumn(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TileContainer(onTap: () {}, childText: 'Show toast'),
          TileContainer(
              onTap: () {
                showSnackBar(context: context, message: 'A Snackbar I am!');
              },
              childText: 'Show snackbar'),
          TileContainer(
              onTap: () {
                context.go('/setting/$title/dummy');
              },
              childText: 'Navigate to dummy page'),
          TileContainer(
              onTap: () {
                locator<FirebaseApi>().initializeNotifications();
              },
              childText: 'Show notification'),
          TileContainer(
              onTap: () {
                context.goNamed(RouteNames.urlLauncher,
                    pathParameters: {'title': 'setting'});
              },
              childText: 'url launcher'),
        ],
      ),
    );
  }
}
