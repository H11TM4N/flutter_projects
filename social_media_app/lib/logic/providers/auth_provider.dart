import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User? get user => _auth.currentUser;

  UserCredential? userCredential;

  registerUser({
    required String email,
    required String password,
  }) async {
    userCredential = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    notifyListeners();
  }

  loginUser({
    required String email,
    required String password,
  }) async {
    await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    notifyListeners();
  }

  logoutUser() async {
    await FirebaseAuth.instance.signOut();
    notifyListeners();
  }

  CollectionReference<Map<String, dynamic>> userCollection() {
    return FirebaseFirestore.instance.collection('users');
  }

  CollectionReference<Map<String, dynamic>> postCollection() {
    return FirebaseFirestore.instance.collection('posts');
  }

  Future<void> addUserToDB({
    required BuildContext context,
    required String username,
    required String email,
  }) async {
    await FirebaseFirestore.instance.collection('users').doc(email).set({
      'email': email,
      'username': username,
      'uid': userCredential,
    });
  }

  Future<DocumentSnapshot<Map<String, dynamic>>> getUserData() async {
    return await userCollection().doc(user!.email).get();
  }

  //*----------------------------------------------------------
  final CollectionReference posts =
      FirebaseFirestore.instance.collection('posts');

  Future<void> addPost({required String postText}) {
    return posts.add(
      {
        'userEmail': user!.email,
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
