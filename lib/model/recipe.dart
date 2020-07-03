import 'package:duration/duration.dart';

emum RecipeType {
  food,
  drink,
}
class Recipe {
  final String id;
  final RecipeType type;
  final String name;
  final Duration duration;
  final List<string> ingredients;
  final List<string> preparation;
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
