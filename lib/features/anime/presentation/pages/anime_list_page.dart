import 'package:anime_list/features/anime/data/api/anime_api_impl.dart';
import 'package:anime_list/features/anime/data/repository/anime_repository_impl.dart';
import 'package:anime_list/features/anime/domain/repository/anime_repository.dart';
import 'package:anime_list/features/anime/presentation/widgets/anime_list.dart';
import 'package:anime_list/shared/result.dart';
import 'package:flutter/material.dart';

class AnimeListPage extends StatefulWidget {
  const AnimeListPage({super.key});

  @override
  State<AnimeListPage> createState() => _AnimeListPageState();
}

class _AnimeListPageState extends State<AnimeListPage> {
  final AnimeRepository animeRepository = AnimeRepositoryImpl(animeApi: AnimeApiImpl());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(future: animeRepository.fetchTrendingAnime(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              _buildCircularProgressIndicator();
            }
            if(snapshot.hasData) {
              final result = snapshot.data;
              final animeList = result!.data;
              if(result.state == ResultState.success) {
                return AnimeList(animeList: animeList!);
              } else {
                return Center(child: Text(result.message.toString()));
              }
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
