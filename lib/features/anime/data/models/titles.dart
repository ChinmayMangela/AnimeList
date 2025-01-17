class Titles {
  final String englishTitle;

  const Titles({
    required this.englishTitle,
  });

  factory Titles.fromJson(Map<String, dynamic> json) {
    return Titles(
      englishTitle: json['en'] ?? '',
    );
  }
}
