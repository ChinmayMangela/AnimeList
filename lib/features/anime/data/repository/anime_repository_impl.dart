
import 'package:anime_list/features/anime/data/api/anime_api.dart';
import 'package:anime_list/features/anime/data/remote_data_source.dart';
import 'package:anime_list/shared/result.dart';

import '../../domain/repository/anime_repository.dart';
import '../models/anime.dart';

class AnimeRepositoryImpl extends AnimeRepository {

  final AnimeApi animeApi;

  AnimeRepositoryImpl({
    required this.animeApi,
  });

  @override
  Future<Result<List<Anime>>> fetchTrendingAnime() async {
    try {
      final trendingAnime = await animeApi.fetchTrendingAnime();
      return Result.success(trendingAnime);
    } catch (e) {
      return Result.failure(e.toString());
    }
  }


}
