import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.all(8.0),
        child: Form(
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
      onPressed: () {},
      child: const Text('Submit'),
    );
  }
}
