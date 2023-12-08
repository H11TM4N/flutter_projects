import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:social_media_app/common/common.dart';
import 'package:social_media_app/data/data.dart';
import 'package:social_media_app/logic/services/database_service.dart';
import 'package:social_media_app/ui/features/pages.dart';

class ConnectPage extends StatelessWidget {
  static const routeName = '/connectPage';
  const ConnectPage({super.key});

  @override
  Widget build(BuildContext context) {
    final databaseService = PostService();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Connect Page'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: databaseService.userCollection().snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Text('An unexpected error occured');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView(
            children: snapshot.data!.docs
                .map<Widget>((doc) => _buildListItem(doc, context))
                .toList(),
          );
        },
      ),
    );
  }

  Widget _buildListItem(DocumentSnapshot document, BuildContext context) {
    Json data = document.data()! as Json;

    if (FirebaseAuth.instance.currentUser!.email != data['email']) {
      return ListTile(
        title: Text(data['email']),
        onTap: () {
          rightToLeftNavigation(
            context,
            ChatPage(userEmail: data['email'], userId: data['uid']),
          );
        },
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
