import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChangeNotifierProviderView extends ConsumerWidget {
  const ChangeNotifierProviderView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChangeNotifierProviderView'),
      ),
      body: const Center(
        child: Text('ChangeNotifierProviderView')
      ),
    );
  }
}