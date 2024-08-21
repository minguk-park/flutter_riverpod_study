import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FutureProviderView extends ConsumerWidget {
  const FutureProviderView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FutureProviderView'),
      ),
      body: const Center(
        child: Text('FutureProviderView')
      ),
    );
  }
}