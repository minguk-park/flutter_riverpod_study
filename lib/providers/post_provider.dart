import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import '../models/post.dart';
import '../repositories/post_repository.dart';
import '../datasources/remote_datasource.dart';
import '../datasources/local_datasource.dart';

final isNetworkAvailableProvider = StateProvider<bool>((ref) {
  return true; // 네트워크가 사용 가능하다고 가정
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
  final postRepository = ref.watch(postRepositoryProvider);
  return postRepository.getPosts();
});
