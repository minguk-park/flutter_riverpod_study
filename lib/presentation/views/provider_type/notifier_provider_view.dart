import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NotifierProviderView extends ConsumerWidget {
  const NotifierProviderView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NotifierProviderView'),
      ),
      body: const Center(
        child: Text('NotifierProviderView')
      ),
    );
  }
}