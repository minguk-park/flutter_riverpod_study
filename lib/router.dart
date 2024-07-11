import 'package:flutter_riverpod_study/presentation/views/home_view.dart';
import 'package:flutter_riverpod_study/presentation/views/post_list_view.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {return const HomeView();}
    ),
    GoRoute(
      path: '/boardriverpod',
      builder: (context, state) {return PostListView();}
    ),
  ],
);