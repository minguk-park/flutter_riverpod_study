import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StateNotifierProviderView extends ConsumerWidget {
  const StateNotifierProviderView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StateNotifierProviderView'),
      ),
      body: const Center(
        child: Text('StateNotifierProviderView')
      ),
    );
  }
}