import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class AuthService extends ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  UserCredential? userCredential;

  registerUser({
    required String email,
    required String password,
    required String username,
  }) async {
    userCredential = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    await _firestore.collection('users').doc(userCredential!.user!.uid).set({
      'email': email,
      'username': username,
      'uid': userCredential!.user!.uid,
    });
  }

  Future<DocumentSnapshot<Map<String, dynamic>>> getUserData() async {
    return await _firestore
        .collection('users')
        .doc(_auth.currentUser!.uid)
        .get();
  }

  loginUser({
    required String email,
    required String password,
  }) async {
    await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  logoutUser() async {
    await _auth.signOut();
  }
}
