import 'package:anime_list/features/anime/domain/models/anime.dart';
import 'package:anime_list/features/anime/presentation/pages/anime_details_page.dart';
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
        final currentAnime = animeList[index];
        return InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => AnimeDetailsPage(anime: currentAnime)));
          },
          child: AnimeTile(
            anime: currentAnime,
          ),
        );
      },
      itemCount: animeList.length,
    );
  }
}
