class Category {
  final String image;
  final String jpName;
  final String enName;
  final String audio;

  const Category({
    required this.jpName,
    required this.enName,
    required this.audio,
    this.image = '',
  });
}
