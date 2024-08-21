import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_study/providers/provider_type_provider.dart';
class AsyncNotifierProviderView extends ConsumerWidget {
  const AsyncNotifierProviderView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // AsyncNotifierProvider에서 상태 값 읽기
    final dataAsyncValue = ref.watch(dataNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('AsyncNotifierProvider Example'),
      ),
      body: Center(
        child: dataAsyncValue.when(
          data: (data) => Text(
            data,
          ),
          loading: () => const CircularProgressIndicator(),
          error: (error, stack) => Text('Error: $error'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 상태 갱신 메서드 호출
          ref.read(dataNotifierProvider.notifier).refresh();
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}