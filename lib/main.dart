import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_study/locator.dart';
import 'package:flutter_riverpod_study/presentation/views/home_view.dart';
import 'package:get_it/get_it.dart';
import 'datasources/remote_datasource.dart';
import 'presentation/views/post_list_view.dart';
import 'repositories/post_repository.dart';

void main() {
  setupLocator();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MVVM Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: PostListView(),
      home: const HomeView(),
    );
  }
}
