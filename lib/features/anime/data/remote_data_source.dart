import 'dart:convert';

import 'package:anime_list/features/anime/domain/models/anime.dart';
import 'package:http/http.dart' as http;

class RemoteDataSource {
  final http.Client client;

  RemoteDataSource({
    http.Client? client,
  }) : client = client ?? http.Client();

  Future<List<Anime>> fetchTrendingAnime() async {
    try {
      final response = await client
          .get(Uri.parse('https://kitsu.io/api/edge/trending/anime'));
      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);
        final List<dynamic>? data = jsonResponse['data'];
        if (data != null) {
          return data.map((anime) => Anime.fromJson(anime)).toList();
        } else {
          throw Exception('Invalid JSON response: missing data');
        }
      } else {
        throw Exception('Failed to fetch data');
      }
    } catch (e) {
      print('Error fetching anime data: $e');
      rethrow;
    }
  }
}
