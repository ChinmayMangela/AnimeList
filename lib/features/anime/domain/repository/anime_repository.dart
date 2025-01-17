

import '../../../../shared/result.dart';
import '../../data/models/anime.dart';

abstract class AnimeRepository {
  Future<Result<List<Anime>>> fetchTrendingAnime();
}