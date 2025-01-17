class PosterImage {
  final String tiny;
  final String large;
  final String small;
  final String medium;
  final String original;

  const PosterImage({
    required this.tiny,
    required this.large,
    required this.small,
    required this.medium,
    required this.original,
  });

  factory PosterImage.fromJson(Map<String, dynamic> json) {
    return PosterImage(
      tiny: json['tiny'],
      large: json['large'],
      small: json['small'],
      medium: json['medium'],
      original: json['original'],
    );
  }
}
