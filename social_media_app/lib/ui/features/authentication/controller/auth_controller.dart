// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:social_media_app/common/common.dart';
import 'package:social_media_app/logic/services/services.dart';

final _authService = AuthService();

class AuthController {
  registerUser({
    required BuildContext context,
    required String password,
    required String confirmPassword,
    required String email,
  }) async {
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
    if (password != confirmPassword) {
      Navigator.pop(context);
      displayMessage('Your passwords don\'t match', context);
    } else {
      try {
        UserCredential? userCredential = await _authService.registerUser(
          email: email,
          password: password,
        );
        if (context.mounted) Navigator.pop(context);
      } on FirebaseAuthException catch (e) {
        Navigator.pop(context);
        displayMessage(e.toString(), context);
      }
    }
  }

  loginUser({
    required BuildContext context,
    required String password,
    required String email,
  }) async {
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
    try {
      await _authService.loginUser(
        email: email,
        password: password,
      );
      if (context.mounted) Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      displayMessage(e.toString(), context);
    }
  }
}
