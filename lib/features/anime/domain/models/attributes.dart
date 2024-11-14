import 'package:anime_list/features/anime/domain/models/poster_image.dart';
import 'package:anime_list/features/anime/domain/models/titles.dart';
import 'cover_image.dart';

class Attributes {
  final String synopsis;
  final DateTime createdAt;
  final String description;
  final double averageRating;
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

  factory Attributes.fromJson(Map<String, dynamic> json) {
    return Attributes(
      synopsis: json['synopsis'] ?? '',
      createdAt: DateTime.parse(json['createdAt'] ?? DateTime.now()),
      description: json['description'] ?? '',
      averageRating: json['averageRating'] is String
          ? double.parse(json['averageRating'] ?? '')  // Parse the rating as a double
          : json['averageRating'].toDouble() ?? 0.0,
      posterImage: PosterImage.fromJson(json['posterImage']),
      coverImage: CoverImage.fromJson(json['coverImage']),
      titles: Titles.fromJson(
        json['titles'],
      ),
    );
  }
}
