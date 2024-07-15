import 'package:flutter_riverpod_study/datasources/local_datasource.dart';
import 'package:flutter_riverpod_study/datasources/remote_datasource.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.I;

void setupLocator() {
  locator.registerLazySingleton(() => RemoteDataSource());
  locator.registerLazySingleton(() => LocalDataSource());

  // 이렇게도 가능
  // locator.registerLazySingleton<RemoteDataSource>(() => RemoteDataSource());
  // locator.registerLazySingleton<LocalDataSource>(() => LocalDataSource());
}