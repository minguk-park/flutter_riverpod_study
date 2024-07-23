import 'package:flutter/material.dart';
import 'package:flutter_riverpod_study/presentation/widgets/button_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          title: const Text('STUDY'),
          actions: const [
        ],
      ),

      body: const Center(
        child: Column(
          children: [
            ButtonWidget(label: 'Riverpod : Post Example', route: '/post',),
            SizedBox(height: 32.0,),
            ButtonWidget(label: 'Riverpod : Increase Example', route: '/increase',),
            SizedBox(height: 32.0,),
            ButtonWidget(label: 'Riverpod : provider type', route: '/providertype',),
            SizedBox(height: 32.0,),
          ],
        ),
      ),
    );
  }
}