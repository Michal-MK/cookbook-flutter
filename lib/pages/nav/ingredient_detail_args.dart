import 'package:cookbook/api/lib/api.dart';

class IngredientDetailArgs {
  final RecipeDetailIngredientModelIngredient ingredient;
  final bool allowEdit;

  IngredientDetailArgs(
    this.ingredient, {
    this.allowEdit = true,
  });
}
