import 'package:flutter/material.dart';
import 'package:flutter_riverpod_study/presentation/views/home_view.dart';
import 'package:flutter_riverpod_study/presentation/views/post_list_view.dart';
import 'package:go_router/go_router.dart';


CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context, 
  required GoRouterState state, 
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: animation.drive(
            Tween<Offset>(
              begin: const Offset(1.25, 0),
              end: Offset.zero,
            ).chain(CurveTween(curve: Curves.ease)),
          ),
          child: child,
        );
      },
  );
}

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: '/boardriverpod',
      pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
        context: context, 
        state: state, 
        child: PostListView(),
      ),
    ),
  ],
);