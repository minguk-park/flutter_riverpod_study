import 'package:flutter_riverpod_study/datasources/post_datasource.dart';
import '../models/post.dart';

class PostRepository {
  final PostDataSource dataSource;

  PostRepository(this.dataSource);

  Future<List<Post>> getPosts() async {
    return await dataSource.fetchPosts();
  }
}