import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_morty_app/core/routes/page_routes.dart';
import 'package:rick_morty_app/core/widgets/navigation_scaffold.dart';
import 'package:rick_morty_app/features/detail/presentation/view/rick_morty_detail_view.dart';
import 'package:rick_morty_app/features/list/presentation/view/rick_morty_list_view.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final _shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');

final rickMortyRouter = GoRouter(
  initialLocation: '/characters',
  observers: [HeroController()],
  navigatorKey: _rootNavigatorKey,
  routes: <RouteBase>[
    StatefulShellRoute.indexedStack(
      branches: <StatefulShellBranch>[
        StatefulShellBranch(
          navigatorKey: _shellNavigatorKey,
          observers: [HeroController()],
          routes: <RouteBase>[
            GoRoute(
              path: '/characters',
              pageBuilder: (_, state) {
                return ScreenPage<dynamic>(
                  key: state.pageKey,
                  child: const RickMortyListView(),
                );
              },
              routes: <GoRoute>[
                GoRoute(
                  path: ':id',
                  pageBuilder: (_, state) {
                    return ScreenPage<dynamic>(
                      key: state.pageKey,
                      child: RickMortyDetailView(
                        id: int.parse(state.pathParameters['id']!),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          observers: [HeroController()],
          routes: <RouteBase>[
            GoRoute(
              path: '/location',
              pageBuilder: (_, state) {
                return ScreenPage(
                  key: state.pageKey,
                  child: Scaffold(body: Container()),
                );
              },
            ),
          ],
        ),
        StatefulShellBranch(
          observers: [HeroController()],
          routes: <RouteBase>[
            GoRoute(
              path: '/episodes',
              pageBuilder: (_, state) {
                return ScreenPage(
                  key: state.pageKey,
                  child: Scaffold(body: Container()),
                );
              },
            ),
          ],
        ),
      ],
      builder: (_, __, navigationShell) {
        return NavigationScaffold(navigationShell: navigationShell);
      },
    ),
  ],
  debugLogDiagnostics: kDebugMode,
);
