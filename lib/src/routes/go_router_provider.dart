import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:volleyball_scout/src/features/dashboard/presentation/ui/dashboard_screen.dart';
import 'package:volleyball_scout/src/features/games/presentation/ui/games_screen.dart';
import 'package:volleyball_scout/src/features/home/presentation/ui/home_screen.dart';
import 'package:volleyball_scout/src/features/teams/presentation/ui/teams_screen.dart';
import 'package:volleyball_scout/src/routes/named_route.dart';
import 'package:volleyball_scout/src/screens/screen1.dart';
import 'package:volleyball_scout/src/screens/screen2.dart';
import 'package:volleyball_scout/src/screens/screen3.dart';

final GlobalKey<NavigatorState> _rootNavigator = GlobalKey(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigator = GlobalKey(debugLabel: 'root');

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
  return GoRouter(navigatorKey: _rootNavigator, initialLocation: '/', routes: [
    GoRoute(
      path: '/home',
      name: root,
      builder: (context, state) => HomeScreen(
        key: state.pageKey,
      ),
    ),
    ShellRoute(
        navigatorKey: _shellNavigator,
        builder: (context, state, child) => DashboardScreen(
              key: state.pageKey,
              child: child,
            ),
        routes: [
          GoRoute(
            path: '/',
            name: home,
            pageBuilder: (context, state) {
              return NoTransitionPage(
                child: HomeScreen(
                  key: state.pageKey,
                ),
              );
            },
          ),
          GoRoute(
            path: '/teams',
            name: teams,
            pageBuilder: (context, state) {
              return NoTransitionPage(
                child: TeamsScreen(
                  key: state.pageKey,
                ),
              );
            },
          ),
          GoRoute(
            path: '/games',
            name: games,
            pageBuilder: (context, state) {
              return NoTransitionPage(
                child: Games(
                  key: state.pageKey,
                ),
              );
            },
          ),
        ]),
    GoRoute(
      path: '/screen1',
      name: screen1,
      builder: (context, state) => Screen1(
        key: state.pageKey,
      ),
    ),
    GoRoute(
      path: '/screen2',
      name: screen2,
      builder: (context, state) => Screen2(
        key: state.pageKey,
      ),
    ),
    GoRoute(
      path: '/screen3',
      name: screen3,
      builder: (context, state) => Screen3(
        key: state.pageKey,
      ),
    ),
  ]);
});
