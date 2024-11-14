import 'package:anime_list/features/anime/domain/models/anime.dart';
import 'package:anime_list/features/anime/presentation/widgets/anime_tile.dart';
import 'package:flutter/material.dart';

class AnimeList extends StatelessWidget {
  const AnimeList({
    super.key,
    required this.animeList,
  });

  final List<Anime> animeList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return AnimeTile(
          anime: animeList[index],
        );
      },
      itemCount: animeList.length,
    );
  }
}
