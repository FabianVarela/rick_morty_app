import 'package:flutter/material.dart';
import 'package:rick_morty_app/core/theme/app_theme.dart';
import 'package:rick_morty_app/features/episode_list/model/episode_list_model.dart';

class EpisodeCard extends StatelessWidget {
  const EpisodeCard({required this.episode, required this.onTap, super.key});

  final RickMortyEpisodeListResult episode;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: .circular(12),
      child: Container(
        padding: const .all(16),
        decoration: BoxDecoration(
          color: context.colors.backgroundCard,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          spacing: 16,
          children: <Widget>[
            _EpisodeNumber(episodeText: episode.episode),
            Expanded(
              child: Column(
                spacing: 4,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    episode.name,
                    style: context.episodeTitle.copyWith(
                      color: context.colors.textPrimary,
                      fontSize: 16,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    spacing: 8,
                    children: <Widget>[
                      Text(
                        episode.airDate,
                        style: context.secondaryInfo.copyWith(
                          color: context.colors.textSecondary,
                        ),
                      ),
                      const Text(' · '),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: context.colors.primary,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          _extractSeason,
                          style: context.episodeNumber.copyWith(
                            color: Colors.black,
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: context.colors.textSecondary,
              size: 24,
            ),
          ],
        ),
      ),
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
    return Column(
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
          style: context.episodeNumber.copyWith(
            color: context.colors.primary,
            fontSize: 18,
          ),
        ),
      ],
    );
  }

  String get _extractEpisode {
    final match = RegExp(r'E(\d+)').firstMatch(episodeText);
    return match != null ? match.group(1)!.padLeft(2, '0') : '01';
  }
}
