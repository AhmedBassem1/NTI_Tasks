class RecipesModel {
  final String name;
  final List<String> ingredients;
  final List <String> instructions;
  final String image;
  final num rating;
  final num prepTimeMinutes;
  final num cookTimeMinutes;

  RecipesModel({
    required this.name,
    required this.ingredients,
    required this.instructions,
    required this.image,
    required this.rating,
    required this.prepTimeMinutes,
    required this.cookTimeMinutes,
  });

  factory RecipesModel.fromJson(Map<String, dynamic> json) {
    return RecipesModel(
      name: json['name'],
      ingredients: List<String>.from(json['ingredients']),
      instructions: List<String>.from(json['instructions']),
      image: json['image'],
      rating: json['rating'],
      prepTimeMinutes: json['prepTimeMinutes'],
      cookTimeMinutes: json['cookTimeMinutes'],);
  }
}
