import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_study/providers/provider_type_provider.dart';
class StateNotifierProviderView extends ConsumerWidget {
  const StateNotifierProviderView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // StateNotifierProvider에서 상태 값 읽기
    final counter = ref.watch(counteStateNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('StateNotifierProvider Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$counter',
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'IncrementBtn',
            tooltip: 'Increment',
            onPressed: () {
              // 상태 증가
              ref.read(counteStateNotifierProvider.notifier).increment();
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            heroTag: 'DecrementBtn',
            tooltip: 'Decrement',
            onPressed: () {
              // 상태 감소
              ref.read(counteStateNotifierProvider.notifier).decrement();
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}