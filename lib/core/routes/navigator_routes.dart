import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_morty_app/core/routes/page_routes.dart';
import 'package:rick_morty_app/core/widgets/navigation_scaffold.dart';
import 'package:rick_morty_app/features/character_detail/presentation/view/character_detail_view.dart';
import 'package:rick_morty_app/features/character_list/presentation/view/character_list_view.dart';
import 'package:rick_morty_app/features/episode_detail/presentation/view/episode_detail_view.dart';
import 'package:rick_morty_app/features/episode_list/presentation/view/episode_list_view.dart';
import 'package:rick_morty_app/features/location_list/presentation/view/location_list_view.dart';

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
              pageBuilder: (_, state) => ScreenPage<dynamic>(
                key: state.pageKey,
                child: const CharacterListView(),
              ),
              routes: <GoRoute>[
                GoRoute(
                  path: ':id',
                  pageBuilder: (_, state) => ScreenPage<dynamic>(
                    key: state.pageKey,
                    child: CharacterDetailView(
                      id: int.parse(state.pathParameters['id']!),
                    ),
                  ),
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
              pageBuilder: (_, state) => ScreenPage(
                key: state.pageKey,
                child: const LocationListView(),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          observers: [HeroController()],
          routes: <RouteBase>[
            GoRoute(
              path: '/episodes',
              pageBuilder: (_, state) => ScreenPage(
                key: state.pageKey,
                child: const EpisodeListView(),
              ),
              routes: <GoRoute>[
                GoRoute(
                  path: ':id',
                  pageBuilder: (_, state) => ScreenPage<dynamic>(
                    key: state.pageKey,
                    child: EpisodeDetailView(
                      id: int.parse(state.pathParameters['id']!),
                    ),
                  ),
                ),
              ],
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
