import 'package:cookbook/api/lib/openapi.dart';

class IngredientDetailArgs {
  final RecipeDetailIngredientModelAllOfIngredient ingredient;
  final bool allowEdit;

  IngredientDetailArgs(
    this.ingredient, {
    this.allowEdit = true,
  });
}
