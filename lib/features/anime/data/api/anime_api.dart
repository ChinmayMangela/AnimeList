
import 'package:anime_list/features/anime/data/models/anime.dart';

abstract class AnimeApi {

  Future<List<Anime>> fetchTrendingAnime();
}