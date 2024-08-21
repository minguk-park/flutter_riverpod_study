import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_study/providers/provider_type_provider.dart';

class StreamProviderView extends ConsumerWidget {
  const StreamProviderView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // StreamProvider에서 상태 값 읽기
    final counterAsyncValue = ref.watch(counterStreamProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('StreamProvider Example'),
      ),
      body: Center(
        child: counterAsyncValue.when(
          data: (count) => Text(
            'Counter: $count', 
          ),
          loading: () => const CircularProgressIndicator(),
          error: (error, stack) => Text('Error: $error'),
        ),
      ),
    );
  }
}