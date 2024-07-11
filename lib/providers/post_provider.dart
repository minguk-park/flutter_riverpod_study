import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_riverpod_study/datasources/remote_datasource.dart';
import 'package:get_it/get_it.dart';
import '../models/post.dart';
import '../repositories/post_repository.dart';

// TODO: postRepositoryProvider -> 이걸 provider로 등록한 이유???

// final postRepositoryProvider = Provider<PostRepository>((ref) {
//   return GetIt.I<PostRepository>();
// });

// final postListProvider = FutureProvider<List<Post>>((ref) async {
//   final postRepository = ref.watch(postRepositoryProvider);
//   return postRepository.getPosts();
// });


final postListProvider = FutureProvider((ref) async {
  final postRepository = GetIt.I<PostRepository>();
  return postRepository.getPosts();
});