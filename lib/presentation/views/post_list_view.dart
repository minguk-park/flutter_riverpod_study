import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../widgets/post_item_widget.dart';
import '../../providers/post_provider.dart';

class PostListView extends ConsumerWidget {
  const PostListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postListAsyncValue = ref.watch(postProvider);

    // debugPrint(postProvider.toString());
    // debugPrint(postListAsyncValue.toString());
    // debugPrint(isNetworkAvailableStateProvider.toString());
    // debugPrint(isNetworkAvailableStateProvider.notifier.toString());

    return Scaffold(
      appBar: AppBar(
        title: const Text('riverpod'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              ref.invalidate(postProvider);
              // ref.read(postProvider);
            },
          ),
          IconButton(
            icon: (){
              var isNetworkAvailable = ref.watch(isNetworkAvailableProvider);

              if(isNetworkAvailable) {
                return const Icon(Icons.wifi);
              } else {
                return const Icon(Icons.wifi_off);
              }
            }(),
            onPressed: () {
              ref.read(isNetworkAvailableStateProvider.notifier).state = !ref.read(isNetworkAvailableStateProvider.notifier).state;
            },
          ),
        ],
      ),
      body: Column(
        children: [
          const Text('riverpod을 처음 알게 되어 만들어본 예시'),
          const Text('riverpod, get_it, 다형성을 공부'),
          Expanded(
            child: Center(
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
          ),
        ],
      ),
    );
  }
}
