import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:practice/features/config/app_injection_container.dart';
import 'package:practice/features/practice_app/apis/firebase_api.dart';
import 'package:practice/features/practice_app/utils/flashbar.dart';

class SettingPage extends StatelessWidget {
  final String title;
  const SettingPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            child: const Text('Show toast'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              showSnackBar(context: context, message: 'A Snackbar I am!');
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
            child: const Text('Show snackbar'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              context.go('/setting/$title/dummy');
            },
            child: const Text('NFavigate'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              locator<FirebaseApi>().initializeNotifications();
            },
            child: const Text('Show notification'),
          ),
        ],
      ),
    );
  }
}
