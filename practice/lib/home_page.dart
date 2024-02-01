import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Stream<String> loadTime() {
      return Stream.periodic(const Duration(seconds: 1), (_) {
        return DateTime.now().toIso8601String();
      });
    }

    final currentTime = useStream(loadTime());

    return Scaffold(
      appBar: AppBar(
        title: Text('${currentTime.data}'),
      ),
    );
  }
}
