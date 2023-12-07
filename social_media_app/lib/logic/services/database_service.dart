import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:social_media_app/data/data.dart';

class DatabaseService {
  User? currentUser = FirebaseAuth.instance.currentUser;

  CollectionReference<Map<String, dynamic>> userCollection() {
    return FirebaseFirestore.instance.collection('users');
  }

  Future<void> addUserToDB({
    required String username,
    required String email,
  }) async {
    await userCollection().doc(email).set(FirebaseUser.empty()
        .copyWith(
          email: email,
          username: username,
        )
        .toMap());
  }

  Future<DocumentSnapshot<Map<String, dynamic>>> getUserData() async {
    return await userCollection().doc(currentUser!.email).get();
  }
}
