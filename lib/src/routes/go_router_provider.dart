import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:volleyball_scout/src/screens/home_screen.dart';
import 'package:volleyball_scout/src/screens/screen1.dart';
import 'package:volleyball_scout/src/screens/screen2.dart';
import 'package:volleyball_scout/src/screens/newpage.dart';

class MyAppRouter extends ConsumerStatefulWidget {
  const MyAppRouter({super.key});

  @override
  ConsumerState<MyAppRouter> createState() => _MyAppRouterState();
}

class _MyAppRouterState extends ConsumerState<MyAppRouter> {
  @override
  Widget build(BuildContext context) {
    final router = ref.watch(goRouterProvider);
    final theme = Theme.of(context);

    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      routerDelegate: router.routerDelegate,
      title: 'Volleyball Scout',
      theme: theme,
    );
  }
}

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(initialLocation: '/home', routes: [
    GoRoute(
      path: '/home',
      builder: (context, state) => HomeScreen(key: state.pageKey),
    ),
    GoRoute(
      path: '/counter',
      builder: (context, state) => Screen1(key: state.pageKey),
    ),
    GoRoute(
      path: '/helloworld',
      builder: (context, state) => Screen2(key: state.pageKey),
    ),
    GoRoute(
      path: '/newpage',
      builder: (context, state) => NewPage(key: state.pageKey),
    ),
  ]);
});
