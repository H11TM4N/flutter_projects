import 'package:flutter/material.dart';
import 'package:social_media_app/ui/features/pages.dart';

class AuthToggle extends StatefulWidget {
  const AuthToggle({super.key});

  @override
  State<AuthToggle> createState() => _AuthToggleState();
}

class _AuthToggleState extends State<AuthToggle> {
  bool _showLoginPage = true;

  void toggleAuth() {
    setState(() {
      _showLoginPage = !_showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_showLoginPage) {
      return LoginPage(onTap: toggleAuth);
    } else {
      return SignUpPage(onTap: toggleAuth);
    }
  }
}
