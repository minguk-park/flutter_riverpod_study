import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_study/presentation/widgets/button_widget.dart';

class ProviderTypeView extends ConsumerWidget {
  const ProviderTypeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod : provider type'),
      ),
      body: const Center(
        child: Column(
          children: [
            ButtonWidget(label: 'provider', route: '/providertype/provider',),
            SizedBox(height: 32.0,),
            ButtonWidget(label: 'state provider', route: '/providertype/stateproviderview',),
            SizedBox(height: 32.0,),
            ButtonWidget(label: 'future provider', route: '/providertype/futureprovider',),
            SizedBox(height: 32.0,),
            ButtonWidget(label: 'stream provider', route: '/providertype/streamproviderview',),
            SizedBox(height: 32.0,),
            ButtonWidget(label: 'notifier provider', route: '/providertype/notifierproviderview',),
            SizedBox(height: 32.0,),
            ButtonWidget(label: 'state notifier provider', route: '/providertype/statenotifierproviderview',),
            SizedBox(height: 32.0,),
            ButtonWidget(label: 'async notifier provider', route: '/providertype/asyncnotifierproviderview',),
            SizedBox(height: 32.0,),
            ButtonWidget(label: 'change notifier provider', route: '/providertype/changenotifierproviderview',),
            SizedBox(height: 32.0,),
          ],
        ),
      ),
    );
  }
}