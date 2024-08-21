import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AsyncNotifierProviderView extends ConsumerWidget {
  const AsyncNotifierProviderView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AsyncNotifierProviderView'),
      ),
      body: const Center(
        child: Text('AsyncNotifierProviderView')
      ),
    );
  }
}