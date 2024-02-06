import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class FirebaseApi {
  final _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initializeNotifications() async {
    await _firebaseMessaging.requestPermission();

    final kToken = await _firebaseMessaging.getToken();

    debugPrint('token: $kToken');
  }
}
