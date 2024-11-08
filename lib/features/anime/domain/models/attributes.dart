import 'package:anime_list/features/anime/domain/models/poster_image.dart';
import 'package:anime_list/features/anime/domain/models/titles.dart';
import 'cover_image.dart';

class Attributes {
  final String synopsis;
  final DateTime createdAt;
  final String description;
  final String averageRating;
  final PosterImage posterImage;
  final CoverImage coverImage;
  final Titles titles;

  const Attributes({
    required this.synopsis,
    required this.createdAt,
    required this.description,
    required this.averageRating,
    required this.posterImage,
    required this.coverImage,
    required this.titles,
  });
}
