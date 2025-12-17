import 'package:flutter/material.dart';
import 'package:rick_morty_app/core/theme/app_theme.dart';
import 'package:rick_morty_app/features/episode_list/model/episode_list_model.dart';

class EpisodeCard extends StatelessWidget {
  const EpisodeCard({required this.episode, required this.onTap, super.key});

  final RickMortyEpisodeListResult episode;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      minTileHeight: 60,
      tileColor: context.colors.backgroundCard,
      shape: RoundedRectangleBorder(borderRadius: .circular(12)),
      contentPadding: const .symmetric(horizontal: 16, vertical: 8),
      leading: _EpisodeNumber(episodeText: episode.episode),
      title: Padding(
        padding: const .only(bottom: 4),
        child: Text(
          episode.name,
          maxLines: 1,
          overflow: .ellipsis,
          style: context.episodeTitle.copyWith(
            color: context.colors.textPrimary,
            fontSize: 16,
          ),
        ),
      ),
      subtitle: Text.rich(
        TextSpan(
          text: episode.airDate,
          style: context.secondaryInfo.copyWith(
            color: context.colors.textSecondary,
          ),
          children: <InlineSpan>[
            TextSpan(
              text: ' · ',
              style: context.secondaryInfo.copyWith(
                color: context.colors.textSecondary,
              ),
            ),
            WidgetSpan(
              alignment: .middle,
              child: Container(
                padding: const .symmetric(horizontal: 6, vertical: 1),
                decoration: BoxDecoration(
                  borderRadius: .circular(4),
                  color: context.colors.primary.withValues(alpha: .2),
                ),
                child: Text(
                  _extractSeason,
                  style: context.secondaryInfo.copyWith(
                    fontWeight: .w600,
                    color: context.colors.primary,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      trailing: Icon(Icons.chevron_right, color: context.colors.textSecondary),
    );
  }

  String get _extractSeason {
    final match = RegExp(r'S(\d+)').firstMatch(episode.episode);
    return match != null ? 'S${match.group(1)}' : 'S01';
  }
}

class _EpisodeNumber extends StatelessWidget {
  const _EpisodeNumber({required this.episodeText});

  final String episodeText;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 56,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: .circular(8),
          color: context.colors.backgroundPrimary,
        ),
        child: Column(
          mainAxisAlignment: .center,
          children: <Widget>[
            Text(
              'EP',
              style: context.smallLabel.copyWith(
                color: context.colors.textTertiary,
                fontSize: 10,
              ),
            ),
            Text(
              _extractEpisode,
              style: context.characterTitle.copyWith(
                color: context.colors.primary,
                fontSize: 22,
                fontWeight: .bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String get _extractEpisode {
    final match = RegExp(r'E(\d+)').firstMatch(episodeText);
    return match != null ? match.group(1)!.padLeft(2, '0') : '01';
  }
}
