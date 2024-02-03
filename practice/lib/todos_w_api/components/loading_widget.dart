import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Center(
        child: CircularProgressIndicator.adaptive(
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}
