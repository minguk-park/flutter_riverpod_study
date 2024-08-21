import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_study/providers/provider_type_provider.dart';

class NotifierProviderView extends ConsumerWidget {
  const NotifierProviderView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // NotifierProvider에서 상태 값 읽기
    final counter = ref.watch(counterNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('NotifierProvider Example'),
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
            heroTag: 'IncrementButton',
            tooltip: 'Increment',
            onPressed: () {
              // 상태 증가
              ref.read(counterNotifierProvider.notifier).increment();
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            heroTag: 'DecrementButton',
            tooltip: 'Decrement',
            onPressed: () {
              // 상태 감소
              ref.read(counterNotifierProvider.notifier).decrement();
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}