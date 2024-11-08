class CoverImage {
  final String tiny;
  final String large;
  final String small;
  final String original;

  const CoverImage({
    required this.tiny,
    required this.large,
    required this.small,
    required this.original,
  });

  factory CoverImage.fromJson(Map<String, dynamic> json) {
    return CoverImage(
      tiny: json['tiny'],
      large: json['large'],
      small: json['small'],
      original: json['original'],
    );
  }
}
