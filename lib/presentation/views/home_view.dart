import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
            ButtonWidget(label: 'Post Example : Riverpod'),
            SizedBox(height: 32.0,),
            ButtonWidget(label: 'board list with'),
            SizedBox(height: 32.0,),
            ButtonWidget(label: 'board list with riverpod'),
            SizedBox(height: 32.0,),
            ButtonWidget(label: 'board list with riverpod'),
            SizedBox(height: 32.0,),
            ButtonWidget(label: 'board list with riverpod'),
            SizedBox(height: 32.0,),
          ],
        ),
      ),
    );
  }
}