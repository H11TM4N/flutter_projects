import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String _formEmail = '';
  String _formPassword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
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
        } else if (!value.contains('@')) {
          return 'Please enter a valid email';
        }
        return null;
      },
      onSaved: (newValue) {
        _formEmail = newValue!;
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
      validator: (value) {
        if (value!.length < 6) {
          return 'password must contain at least 6 characters';
        }
        return null;
      },
      onSaved: (newValue) {
        _formPassword = newValue!;
      },
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          _formKey.currentState!.save();
          // use the formEmail and _formPassword
          // do smth with the data
        }
      },
      child: const Text('Submit'),
    );
  }
}
