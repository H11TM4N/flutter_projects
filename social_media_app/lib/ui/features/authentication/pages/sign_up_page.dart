// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:social_media_app/logic/services/services.dart';
import 'package:social_media_app/ui/features/authentication/controller/auth_controller.dart';
import 'package:social_media_app/ui/widgets/widgets.dart';

class SignUpPage extends HookConsumerWidget {
  final void Function() onTap;
  const SignUpPage({super.key, required this.onTap});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameController = useTextEditingController();
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final passConfirmController = useTextEditingController();

    final theme = Theme.of(context).colorScheme;
    final databaseService = DatabaseService();
    final authController = AuthController();
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
                controller: nameController,
              ),
              const SizedBox(height: 15),
              CustomTextfield(
                hintText: 'Enter your email',
                isObscure: false,
                controller: emailController,
              ),
              const SizedBox(height: 15),
              CustomTextfield(
                hintText: 'Enter your password',
                isObscure: true,
                controller: passwordController,
              ),
              const SizedBox(height: 15),
              CustomTextfield(
                hintText: 'Confirm your password',
                isObscure: true,
                controller: passConfirmController,
              ),
              const SizedBox(height: 15),
              CustomButton(
                text: 'REGISTER',
                onPressed: () async {
                  await authController.registerUser(
                    context: context,
                    password: passwordController.text,
                    confirmPassword: passConfirmController.text,
                    email: emailController.text,
                    username: nameController.text,
                  );
                  await databaseService.addUserToDB(
                    username: nameController.text,
                    email: emailController.text,
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
