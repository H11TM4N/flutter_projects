import 'package:flutter/material.dart';
import 'package:social_media_app/common/common.dart';
import 'package:social_media_app/logic/services/database_service.dart';

class UsersPage extends StatelessWidget {
  static const routeName = '/users page';
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final databaseService = DatabaseService();

    return Scaffold(
      appBar: AppBar(
        title: const Text('UsersPage'),
        backgroundColor: theme.inversePrimary,
        elevation: 0,
      ),
      body: StreamBuilder(
        stream: databaseService.userCollection().snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasData) {}
          if (snapshot.hasError) {
            displayMessage("Something went wrong", context);
          }
          if (snapshot.data == null) {
            return const Center(child: Text('No data'));
          }
          final users = snapshot.data!.docs;

          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              final user = users[index];
              return ListTile(
                title: Text(user['username']),
                subtitle: Text(user['email']),
              );
            },
          );
        },
      ),
    );
  }
}
