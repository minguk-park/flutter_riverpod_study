import '../datasources/remote_datasource.dart';
import '../models/post.dart';

class PostRepository {
  final RemoteDataSource remoteDataSource;

  PostRepository(this.remoteDataSource);

  // Future<List<Post>> getPosts() async {
  //   return await remoteDataSource.fetchPosts();
  // }

  Future<List<Post>> getPosts() {
    return remoteDataSource.fetchPosts();
  }
}
