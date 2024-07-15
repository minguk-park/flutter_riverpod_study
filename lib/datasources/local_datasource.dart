import 'dart:math';
import 'package:flutter_riverpod_study/datasources/post_datasource.dart';

import '../models/post.dart';

class LocalDataSource implements PostDataSource {

  @override
  Future<List<Post>> fetchPosts() async {
    await Future.delayed(const Duration(seconds: 1));
    final random = Random();
    return List.generate(
      5,
      (index) => Post(
        id: random.nextInt(1000),
        title: 'Local Post ${random.nextInt(1000)}',
        content: 'Content of the local post ${random.nextInt(1000)}',
      ),
    );
  }
}
