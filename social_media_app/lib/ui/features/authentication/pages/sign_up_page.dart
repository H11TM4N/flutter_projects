// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:social_media_app/ui/features/authentication/controller/auth_controller.dart';
import 'package:social_media_app/ui/widgets/widgets.dart';

class SignUpPage extends HookWidget {
  final void Function() onTap;
  SignUpPage({super.key, required this.onTap});

  final _nameController = useTextEditingController();
  final _emailController = useTextEditingController();
  final _passwordController = useTextEditingController();
  final _passConfirmController = useTextEditingController();

  final _authController = AuthController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                hintText: 'Enter your username',
                isObscure: false,
                controller: _nameController,
              ),
              const SizedBox(height: 15),
              CustomTextfield(
                hintText: 'Enter your email',
                isObscure: false,
                controller: _emailController,
              ),
              const SizedBox(height: 15),
              CustomTextfield(
                hintText: 'Enter your password',
                isObscure: true,
                controller: _passwordController,
              ),
              const SizedBox(height: 15),
              CustomTextfield(
                hintText: 'Confirm your password',
                isObscure: true,
                controller: _passConfirmController,
              ),
              const SizedBox(height: 15),
              CustomButton(
                text: 'REGISTER',
                onPressed: () {
                  _authController.registerUser(
                    context: context,
                    password: _passwordController.text,
                    confirmPassword: _passConfirmController.text,
                    email: _emailController.text,
                    username: _nameController.text,
                  );
                },
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account? '),
                  GestureDetector(
                    onTap: onTap,
                    child: const Text(
                      'Login here',
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
