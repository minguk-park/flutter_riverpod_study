import 'package:flutter_riverpod_study/datasources/remote_datasource.dart';
import 'package:flutter_riverpod_study/repositories/post_repository.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.I;

void setupLocator() {
  // locator.registerLazySingleton(() => RemoteDataSource());
  locator.registerLazySingleton(() => PostRepository(RemoteDataSource()));
}