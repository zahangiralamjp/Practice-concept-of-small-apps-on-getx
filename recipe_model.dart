class Recipe {
  final String id;
  final String name;
  final String desc;
  final String category;
  final double rating;
  final int time;
  final String imageUrl;
  bool isFavorite;

  Recipe({
    required this.id,
    required this.name,
    required this.desc,
    required this.category,
    required this.rating,
    required this.time,
    required this.imageUrl,
    this.isFavorite = false,
  });
}
