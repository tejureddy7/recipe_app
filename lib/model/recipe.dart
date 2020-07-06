import 'package:duration/duration.dart';

enum RecipeType {
  food,
  drink,
}
class Recipe {
  final String id;
  final RecipeType type;
  final String name;
  final Duration duration;
  final List ingredients;
  final List preparation;
  final String imageURL;

  const Recipe({
    this.id,
    this.type,
    this.name,
    this.duration,
    this.ingredients,
    this.preparation,
    this.imageURL,
});
}
