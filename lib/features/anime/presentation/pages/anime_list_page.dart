import 'package:anime_list/features/anime/data/anime_repository.dart';
import 'package:anime_list/features/anime/presentation/widgets/anime_list.dart';
import 'package:flutter/material.dart';

class AnimeListPage extends StatefulWidget {
  const AnimeListPage({super.key, required this.animeRepository});

  final AnimeRepository animeRepository;

  @override
  State<AnimeListPage> createState() => _AnimeListPageState();
}

class _AnimeListPageState extends State<AnimeListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(future: widget.animeRepository.fetchTrendingAnime(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              _buildCircularProgressIndicator();
            }
            if(snapshot.hasData) {
              final anime = snapshot.data;
              return AnimeList(animeList: anime!);
            } else {
              return Text(snapshot.error.toString());
            }
          }),
    );
  }


  Widget _buildCircularProgressIndicator() {
    return const Center(child: CircularProgressIndicator());
  }
}
