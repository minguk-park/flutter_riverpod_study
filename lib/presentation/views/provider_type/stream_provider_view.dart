import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StreamProviderView extends ConsumerWidget {
  const StreamProviderView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StreamProviderView'),
      ),
      body: const Center(
        child: Text('StreamProviderView')
      ),
    );
  }
}