import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_study/presentation/views/home_view.dart';
import 'package:flutter_riverpod_study/presentation/views/increase_view.dart';
import 'package:flutter_riverpod_study/presentation/views/post_list_view.dart';
import 'package:flutter_riverpod_study/presentation/views/provider_type/async_notifier_provider_view.dart';
import 'package:flutter_riverpod_study/presentation/views/provider_type/change_notifier_provider_view.dart';
import 'package:flutter_riverpod_study/presentation/views/provider_type/future_provider_view.dart';
import 'package:flutter_riverpod_study/presentation/views/provider_type/notifier_provider_view.dart';
import 'package:flutter_riverpod_study/presentation/views/provider_type/provider_view.dart';
import 'package:flutter_riverpod_study/presentation/views/provider_type/state_notifier_provider_view.dart';
import 'package:flutter_riverpod_study/presentation/views/provider_type/state_provider_view.dart';
import 'package:flutter_riverpod_study/presentation/views/provider_type/stream_provider_view.dart';
import 'package:flutter_riverpod_study/presentation/views/provider_type_view.dart';
import 'package:go_router/go_router.dart';


final router = GoRouter(
  initialLocation: '/',
  routes: [
    route('/',                const HomeView()),
    route('/post',            const PostListView()),
    route('/increase',        const IncreaseView()),
    route('/providertype',    const ProviderTypeView(),
      [
        route('provider',                     const ProviderView()),
        route('futureprovider',               const FutureProviderView()),
        route('stateproviderview',            const StateProviderView()),
        route('streamproviderview',           const StreamProviderView()),
        route('notifierproviderview',         const NotifierProviderView()),
        route('statenotifierproviderview',    const StateNotifierProviderView()),
        route('asyncnotifierproviderview',    const AsyncNotifierProviderView()),
        route('changenotifierproviderview',   const ChangeNotifierProviderView()),
      ],
    ),
  ],
);

//Route Transition
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


//function route
GoRoute route(String path, Widget view, [List<RouteBase>? routes]){
  return GoRoute(
      path: path,
      pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
        context: context, 
        state: state, 
        child: view,
      ),
      routes : routes ?? [],
    );
}