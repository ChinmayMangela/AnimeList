
import 'package:anime_list/features/anime/data/remote_data_source.dart';
import 'package:anime_list/features/anime/domain/models/anime.dart';

class AnimeRepository {
  final RemoteDataSource remoteDataSource;

  AnimeRepository(this.remoteDataSource);

  Future<List<Anime>> fetchTrendingAnime() async {
    final animeList = await remoteDataSource.fetchTrendingAnime();
    return animeList;
  }
}
