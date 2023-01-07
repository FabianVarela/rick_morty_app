import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_morty_app/features/detail/presentation/view/rick_morty_detail_view.dart';
import 'package:rick_morty_app/features/list/presentation/view/rick_morty_list_view.dart';

final rickMortyRouter = GoRouter(
  observers: [HeroController()],
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      pageBuilder: (_, state) => _setDefaultPageRoute<dynamic>(
        pageKey: state.pageKey,
        child: const RickMortyListView(),
      ),
      routes: <GoRoute>[
        GoRoute(
          path: ':id',
          pageBuilder: (_, state) => _setDefaultPageRoute<dynamic>(
            pageKey: state.pageKey,
            child: RickMortyDetailView(
              id: int.parse(state.params['id']!),
            ),
          ),
        ),
      ],
    ),
  ],
  debugLogDiagnostics: kDebugMode,
);

Page<dynamic> _setDefaultPageRoute<T>({
  required LocalKey pageKey,
  required Widget child,
}) {
  final iosPlatforms = [TargetPlatform.iOS, TargetPlatform.macOS];
  if (iosPlatforms.contains(defaultTargetPlatform)) {
    return CupertinoPage<T>(key: pageKey, child: child);
  }
  return MaterialPage<T>(key: pageKey, child: child);
}
