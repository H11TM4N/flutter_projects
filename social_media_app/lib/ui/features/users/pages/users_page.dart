import 'package:flutter/material.dart';
import 'package:social_media_app/common/common.dart';
import 'package:social_media_app/logic/services/database_service.dart';

class UsersPage extends StatelessWidget {
  static const routeName = '/users page';
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final databaseService = PostService();

    return Scaffold(
      body: StreamBuilder(
        stream: databaseService.userCollection().snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasError) {
            displayMessage("Something went wrong", context);
          }

          if (!snapshot.hasData || snapshot.data == null) {
            return const Center(child: Text('No data'));
          }

          final users = snapshot.data!.docs;

          return Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50.0, left: 25),
                child: Row(
                  children: [
                    CustomBackButton(),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(0),
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    final user = users[index];
                    return ListTile(
                      title: Text(user['username']),
                      subtitle: Text(user['email']),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
