import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:social_media_app/ui/features/authentication/controller/auth_controller.dart';
import 'package:social_media_app/ui/widgets/widgets.dart';

class LoginPage extends HookWidget {
  final void Function() onTap;
  LoginPage({super.key, required this.onTap});

  final _emailController = useTextEditingController();
  final _passwordController = useTextEditingController();

  final _authController = AuthController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: theme.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.person,
                size: 80,
                color: theme.inversePrimary,
              ),
              const SizedBox(height: 15),
              const Text(
                'SOCIAL APP',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 25),
              CustomTextfield(
                hintText: 'Enter your email',
                isObscure: false,
                controller: _emailController,
              ),
              const SizedBox(height: 5),
              CustomTextfield(
                hintText: 'Enter your password',
                isObscure: true,
                controller: _passwordController,
              ),
              const SizedBox(height: 15),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Forgot password?'),
                ],
              ),
              const SizedBox(height: 15),
              CustomButton(
                text: 'LOGIN',
                onPressed: () {
                  _authController.loginUser(
                    context: context,
                    password: _passwordController.text,
                    email: _emailController.text,
                  );
                },
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don\'t have an account? '),
                  GestureDetector(
                    onTap: onTap,
                    child: const Text(
                      'Register here',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
