// ignore_for_file: non_constant_identifier_names

import 'package:cookbook/texts/generic/recipe.dart';

class EnRecipeTexts implements RecipeTexts {
  @override
  String get singular => "Recipe";

  @override
  String get recipeDetail_duration => "{0} min.";

  @override
  String get recipeDetail_ingredientCount => "{0:0|no|1-|\\0} ingredient{0:0|s|1||2-|s}";

  @override
  String get recipeDetail_steps => "Steps";

  @override
  String get recipeDetail_deleteLocalRecipe => "Do you wish to delete the recipe?";

  @override
  String get recipeDetail_recipeSaved => "Recipe saved";

  @override
  String get recipeDetail_shareText => "Check out this recipe: {0}";

  @override
  String get recipeDetail_noIngredients => "No ingredients for this recipe";

  @override
  String get recipe_persistenceIconMeaningLocal => "Stored on the device";

  @override
  String get recipe_persistenceIconMeaningRemote => "Stored on the server";

  @override
  String get recipe_persistenceIconMeaningTitle => "Recipe storage location";
}
