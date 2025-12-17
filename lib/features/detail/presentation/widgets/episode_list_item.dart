import 'package:flutter/material.dart';
import 'package:rick_morty_app/features/detail/model/rick_morty_detail_model.dart';

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
      tileColor: const Color(0xFF1E3A2F),
      shape: RoundedRectangleBorder(borderRadius: .circular(8)),
      contentPadding: const .symmetric(vertical: 12, horizontal: 16),
      leading: _EpisodeText(episodeText: episode.episode),
      title: Text(
        episode.name,
        maxLines: 1,
        overflow: .ellipsis,
        style: const TextStyle(fontSize: 14, fontWeight: .w600),
      ),
      subtitle: Text(
        episode.airDate,
        style: const TextStyle(fontSize: 12, color: Colors.white54),
      ),
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
          color: const Color(0xFF0D1B2A),
        ),
        child: Padding(
          padding: const .symmetric(horizontal: 4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                _extractSeason,
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: .w600,
                  color: Colors.white54,
                ),
              ),
              Text(
                _extractEpisode,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: .bold,
                  color: Colors.white,
                ),
              ),
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
