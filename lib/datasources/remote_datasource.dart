import 'dart:math';
import '../models/post.dart';

class RemoteDataSource {

  Future<List<Post>> fetchPosts() async {
    // Simulate fetching data from a remote server
    await Future.delayed(Duration(seconds: 2));
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
