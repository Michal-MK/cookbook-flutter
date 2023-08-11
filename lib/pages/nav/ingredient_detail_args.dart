import 'package:cookbook/api/lib/openapi.dart';

class IngredientDetailArgs {
  RecipeDetailIngredientModelAllOfIngredient ingredient;
  final bool allowEdit;

  IngredientDetailArgs(
    this.ingredient, {
    this.allowEdit = true,
  });
}
