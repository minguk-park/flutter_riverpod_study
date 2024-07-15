import 'dart:math';
import 'package:flutter_riverpod_study/datasources/post_datasource.dart';

import '../models/post.dart';

class RemoteDataSource implements PostDataSource{

  @override
  Future<List<Post>> fetchPosts() async {
    await Future.delayed(const Duration(seconds: 2));
    final random = Random();
    return List.generate(
      5,
      (index) => Post(
        id: random.nextInt(1000),
        title: 'Post ${random.nextInt(1000)}',
        content: 'Content of the post ${random.nextInt(1000)}',
      ),
    );
  }
}
