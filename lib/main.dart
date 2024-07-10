import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'datasources/remote_datasource.dart';
import 'presentation/views/post_list_view.dart';
import 'repositories/post_repository.dart';

// void setupLocator() {
//   GetIt.I.registerLazySingleton(() => RemoteDataSource());
//   GetIt.I.registerLazySingleton(() => PostRepository(GetIt.I<RemoteDataSource>()));
// }

void main() {
  // setupLocator();
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
      home: PostListView(),
    );
  }
}
