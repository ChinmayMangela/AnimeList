
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:anime_list/features/anime/data/api/anime_api.dart';
import 'package:anime_list/features/anime/data/models/anime.dart';

class AnimeApiImpl extends AnimeApi {
  @override
  Future<List<Anime>> fetchTrendingAnime() async {
    try {
      final response = await http.get(Uri.parse('https://kitsu.io/api/edge/trending/anime'));
      if(response.statusCode == 200) {
        final animeData = jsonDecode(response.body);
        final List<dynamic> trendingAnime = animeData['data'];
        return trendingAnime.map((anime) => Anime.fromJson(anime)).toList();
      } else {
        print('Http status code error');
        throw Exception('Http status code error');
      }
    } catch (e) {
      print(e.toString());
      throw Exception(e.toString());
    }
  }

}