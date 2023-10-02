import 'package:flutter_riverpod/flutter_riverpod.dart';

final normalProvider = Provider<String>((ref) {
  return 'Normal Provider Practice';
});

final futureProvider = FutureProvider<String>((ref) async {
  return Future.delayed(
    const Duration(seconds: 5),
    () => 'Future Provider Practice',
  );
});

final counterProvider = StateNotifierProvider<CounterNotifier, int>((ref) {
  return CounterNotifier();
});

class CounterNotifier extends StateNotifier<int> {
  CounterNotifier() : super(0);

  void add() {
    state = state + 1;
  }
}
