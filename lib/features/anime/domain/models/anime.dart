import 'package:anime_list/features/anime/domain/models/attributes.dart';

class Anime {
  final Attributes attributes;

  const Anime({required this.attributes});

  factory Anime.fromJson(Map<String, dynamic> json) {
    return Anime(
      attributes: Attributes.fromJson(json['attributes']),
    );
  }
}
