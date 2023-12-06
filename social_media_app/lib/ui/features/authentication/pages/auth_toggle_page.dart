import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:social_media_app/ui/features/pages.dart';

class AuthToggle extends HookWidget {
  const AuthToggle({super.key});

  @override
  Widget build(BuildContext context) {
    final showLoginPage = useState(true);

    toggleAuth() {
      showLoginPage.value = !showLoginPage.value;
    }

    if (showLoginPage.value) {
      return LoginPage(onTap: toggleAuth);
    } else {
      return SignUpPage(onTap: toggleAuth);
    }
  }
}
