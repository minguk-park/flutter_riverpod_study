import '../models/post.dart';

abstract class PostDataSource {
  Future<List<Post>> fetchPosts();
}
