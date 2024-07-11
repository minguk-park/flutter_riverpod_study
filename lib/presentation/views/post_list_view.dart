import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_study/models/post.dart';
import '../widgets/post_item_widget.dart';
import '../../providers/post_provider.dart';

class PostListView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postListAsyncValue = ref.watch(postListProvider);
  
    return Scaffold(
      appBar: AppBar(
        title: const Text('거지같은 riverpod'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              ref.invalidate(postListProvider);
              ref.read(postListProvider);
            },
          ),
        ],
      ),
      body: Center(
        child: postListAsyncValue.when(
            data: (posts) {
              return ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  return PostItemWidget(post: posts[index]);
                },
              );
            },
            error:  (error, stack) => Text('오류: $error'),
            loading: () => const CircularProgressIndicator(),
          ),
      ),
    );
  }
}
