import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import '../models/post.dart';
import '../repositories/post_repository.dart';

// final postRepositoryProvider = Provider<PostRepository>((ref) {
//   return GetIt.I<PostRepository>();
// });

// final postProvider = FutureProvider<List<Post>>((ref) async {
//   final postRepository = ref.watch(postRepositoryProvider);
//   return postRepository.getPosts();
// });
