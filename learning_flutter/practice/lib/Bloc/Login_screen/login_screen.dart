import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              emailField(),
              passwordField(),
              const SizedBox(height: 20),
              submitButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      decoration: const InputDecoration(
          labelText: 'Email',
          hintText: 'Enter your email',
          hintStyle: TextStyle(fontWeight: FontWeight.w300)),
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your email';
        }
        return null;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      decoration: const InputDecoration(
          labelText: 'Password',
          hintText: 'Enter your password',
          hintStyle: TextStyle(fontWeight: FontWeight.w300)),
      obscureText: true,
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      onPressed: () {
        formKey.currentState?.reset();
      },
      child: const Text('Submit'),
    );
  }
}
