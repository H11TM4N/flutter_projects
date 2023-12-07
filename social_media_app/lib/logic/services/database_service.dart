import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:social_media_app/data/data.dart';

class DatabaseService {
  User? currentUser = FirebaseAuth.instance.currentUser;

  CollectionReference<Map<String, dynamic>> userCollection() {
    return FirebaseFirestore.instance.collection('users');
  }

  CollectionReference<Map<String, dynamic>> postCollection() {
    return FirebaseFirestore.instance.collection('posts');
  }

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

  Future<DocumentSnapshot<Map<String, dynamic>>> getUserData() async {
    return await userCollection().doc(currentUser!.email).get();
  }

  //*----------------------------------------------------------
  final CollectionReference posts =
      FirebaseFirestore.instance.collection('posts');

  Future<void> addPost({required String postText}) {
    return posts.add(
      {
        'userEmail': currentUser!.email,
        'postText': postText,
        'TimeStamp': Timestamp.now(),
      },
    );
  }

  Stream<QuerySnapshot> getUserPosts() {
    final postStream = FirebaseFirestore.instance
        .collection('posts')
        .orderBy('TimeStamp', descending: true)
        .snapshots();

    return postStream;
  }
}
