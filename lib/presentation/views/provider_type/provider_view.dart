import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_study/providers/provider_type_provider.dart';

class ProviderView extends ConsumerWidget {
  const ProviderView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Provider에서 상태 값 읽기
    final message = ref.watch(messageProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Provider Example'),
      ),
      body: Center(
        child: Text(
          message,  // Provider에서 가져온 메시지 출력
        ),
      ),
    );
  }
}