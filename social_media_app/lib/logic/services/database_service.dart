import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:social_media_app/data/data.dart';

class DatabaseService {
  Future<void> addUserToDB({
    required String username,
    required String email,
  }) async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(email)
        .set(FirebaseUser.empty()
            .copyWith(
              email: email,
              username: username,
            )
            .toMap());
  }
}
