import 'package:anime_list/features/anime/domain/models/attributes.dart';
import 'package:anime_list/features/anime/domain/models/titles.dart';

class Anime {
  final Titles title;
  final Attributes attributes;

  const Anime({
    required this.title,
    required this.attributes
  });
}
