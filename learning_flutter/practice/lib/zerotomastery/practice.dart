import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/zerotomastery/providers/providers.dart';

class Practice extends ConsumerWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RiverPod practice'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Text(
                  ref.read(normalProvider),
                ),
                ref.watch(futureProvider).when(
                      data: (data) => Text(data),
                      error: (error, stackTrace) => const Text('error'),
                      loading: () => const CircularProgressIndicator(),
                    ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
