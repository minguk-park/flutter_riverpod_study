import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_study/models/post.dart';
import '../widgets/post_item_widget.dart';
import '../../providers/post_provider.dart';

class PostListView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final postsAsyncValue = ref.watch(postProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              // ref.invalidate(postProvider);
              // ref.read(postProvider);
            },
          ),
        ],
      ),
      // body: postsAsyncValue.when(
      //   data: (posts) {
      //     return ListView.builder(
      //       itemCount: posts.length,
      //       itemBuilder: (context, index) {
      //         return PostItemWidget(post: posts[index]);
      //       },
      //     );
      //   },
      //   loading: () => const Center(child: CircularProgressIndicator()),
      //   error: (error, stack) => Center(child: Text('Error: $error')),
      // ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index){
            return PostItemWidget(post: Post(id: 5, title: "test", content: "test contents"));
          },
        ),
    );
  }
}
