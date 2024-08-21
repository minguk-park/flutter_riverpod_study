import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_study/providers/provider_type_provider.dart';
class ChangeNotifierProviderView extends ConsumerWidget {
  const ChangeNotifierProviderView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ChangeNotifierProvider에서 상태 값 읽기
    final counterNotifier = ref.watch(counterChangeNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('ChangeNotifierProvider Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '${counterNotifier.count}',
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              // 상태 증가
              counterNotifier.increment();
            },
            heroTag: 'IncrementBtn',
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () {
              // 상태 감소
              counterNotifier.decrement();
            },
            heroTag: 'DecrementBtn',
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}