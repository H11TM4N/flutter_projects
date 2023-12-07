import 'package:flutter/material.dart';
import 'package:social_media_app/logic/services/database_service.dart';

class ProfilePage extends StatelessWidget {
  static const routeName = '/profile page';
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final databaseService = DatabaseService();

    return Scaffold(
      appBar: AppBar(
        title: const Text('ProfilePage'),
        backgroundColor: theme.inversePrimary,
        elevation: 0,
      ),
      body: FutureBuilder(
        future: databaseService.getUserData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasData) {
            Map<String, dynamic>? user = snapshot.data!.data();

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(user!['email']),
                Text(user['username']),
              ],
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return const Center(child: Text('No data'));
          }
        },
      ),
    );
  }
}
