import 'package:flutter/material.dart';
import 'package:rick_morty_app/core/theme/app_theme.dart';
import 'package:rick_morty_app/features/character_detail/model/character_detail_model.dart';

class EpisodeListItem extends StatelessWidget {
  const EpisodeListItem({required this.episode, this.onTap, super.key});

  final RickMortyEpisodeResult episode;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      minTileHeight: 60,
      textColor: Colors.white,
      tileColor: context.colors.backgroundCard,
      shape: RoundedRectangleBorder(borderRadius: .circular(8)),
      contentPadding: const .symmetric(vertical: 12, horizontal: 16),
      leading: _EpisodeText(episodeText: episode.episode),
      title: Text(
        episode.name,
        maxLines: 1,
        overflow: .ellipsis,
        style: context.episodeTitle,
      ),
      subtitle: Text(episode.airDate, style: context.secondaryInfo),
      trailing: const Icon(
        Icons.play_circle_fill_rounded,
        color: Color(0xFF9EA3AE),
      ),
    );
  }
}

class _EpisodeText extends StatelessWidget {
  const _EpisodeText({required this.episodeText});

  final String episodeText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 56,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: .circular(6),
          color: context.colors.backgroundPrimary,
        ),
        child: Padding(
          padding: const .symmetric(horizontal: 4),
          child: Column(
            mainAxisAlignment: .center,
            children: <Widget>[
              Text(_extractSeason, style: context.smallLabel),
              Text(_extractEpisode, style: context.episodeNumber),
            ],
          ),
        ),
      ),
    );
  }

  String get _extractSeason {
    final match = RegExp(r'S(\d+)').firstMatch(episodeText);
    return match != null ? 'S${match.group(1)}' : 'S01';
  }

  String get _extractEpisode {
    final match = RegExp(r'E(\d+)').firstMatch(episodeText);
    return match != null ? 'E${match.group(1)}' : 'E01';
  }
}
