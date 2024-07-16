import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import '../models/post.dart';
import '../repositories/post_repository.dart';
import '../datasources/remote_datasource.dart';
import '../datasources/local_datasource.dart';

final isNetworkAvailableStateProvider = StateProvider<bool>((ref) {
  
  debugPrint('isNetworkAvailableStateProvider');
  
  return true;
});



final isNetworkAvailableProvider = Provider<bool>((ref) {
  
  debugPrint('isNetworkAvailableProvider');
  
  return ref.watch(isNetworkAvailableStateProvider);
});



final postRepositoryProvider = Provider<PostRepository>((ref) {

  debugPrint('postRepositoryProvider');
  
  final isNetworkAvailable = ref.watch(isNetworkAvailableProvider);
  
  if (isNetworkAvailable) {
    return PostRepository(GetIt.I<RemoteDataSource>());
  } else {
    return PostRepository(GetIt.I<LocalDataSource>());
  }
});



final postProvider = FutureProvider<List<Post>>((ref) async {
  
  debugPrint('postProvider');
  
  final postRepository = ref.watch(postRepositoryProvider);
  
  return postRepository.getPosts();
});
