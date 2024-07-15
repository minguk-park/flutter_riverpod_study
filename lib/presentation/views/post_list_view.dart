import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../widgets/post_item_widget.dart';
import '../../providers/post_provider.dart';

class PostListView extends ConsumerWidget {
  const PostListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postListAsyncValue = ref.watch(postProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('riverpod'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              ref.invalidate(postProvider);
              ref.read(postProvider);
            },
          ),
          IconButton(
            icon: const Icon(Icons.wifi),
            onPressed: () {
              ref.read(isNetworkAvailableProvider.notifier).state = !ref.read(isNetworkAvailableProvider.notifier).state;
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
