import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class PostService {
  User? currentUser = FirebaseAuth.instance.currentUser;

  CollectionReference<Map<String, dynamic>> userCollection() {
    return FirebaseFirestore.instance.collection('users');
  }

  CollectionReference<Map<String, dynamic>> postCollection() {
    return FirebaseFirestore.instance.collection('posts');
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
