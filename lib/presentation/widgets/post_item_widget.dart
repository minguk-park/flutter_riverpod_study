import 'package:flutter/material.dart';
import '../../models/post.dart';

class PostItemWidget extends StatelessWidget {
  final Post post;

  const PostItemWidget({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(post.title),
      subtitle: Text(post.content),
    );
  }
}
