import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_morty_app/core/gen/assets.gen.dart';
import 'package:rick_morty_app/l10n/l10n.dart';
import 'package:vector_graphics/vector_graphics.dart';

class NavigationScaffold extends StatelessWidget {
  const NavigationScaffold({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final currentIndex = navigationShell.currentIndex;

    final menuItems = <({String title, String iconPath})>[
      (title: l10n.characterNavBarTitle, iconPath: Assets.svg.characters),
      (title: l10n.locationNavBarTitle, iconPath: Assets.svg.location),
      (title: l10n.episodeNavBarTitle, iconPath: Assets.svg.episodes),
    ];

    return Scaffold(
      body: HeroMode(child: navigationShell),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white30,
        backgroundColor: const Color(0xFF4EADC7),
        items:
            menuItems.mapIndexed((index, item) {
              return BottomNavigationBarItem(
                label: item.title,
                icon: SizedBox.fromSize(
                  size: const Size(24, 24),
                  child: VectorGraphic(
                    loader: AssetBytesLoader(item.iconPath),
                    colorFilter: ColorFilter.mode(
                      currentIndex == index ? Colors.white : Colors.white30,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              );
            }).toList(),
        currentIndex: currentIndex,
        onTap: navigationShell.goBranch,
      ),
    );
  }
}
