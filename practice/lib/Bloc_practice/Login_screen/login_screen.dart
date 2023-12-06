import 'package:flutter/material.dart';
import '../mixins/validation_mixin.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with ValidationMixin {
  final _formKey = GlobalKey<FormState>();
  String formEmail = '';
  String formPassword = '';

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
      validator: validateEmail,
      onSaved: (newValue) {
        formEmail = newValue!;
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
      validator: validatePassword,
      onSaved: (newValue) {
        formPassword = newValue!;
      },
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          _formKey.currentState!.save();
          print('$formEmail and $formPassword');
          // use the formEmail and _formPassword
          // do smth with the data
        }
      },
      child: const Text('Submit'),
    );
  }
}
