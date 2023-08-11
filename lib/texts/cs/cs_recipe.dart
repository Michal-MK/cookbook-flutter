// ignore_for_file: non_constant_identifier_names

import 'package:cookbook/texts/generic/recipe.dart';

class CsRecipeTexts implements RecipeTexts {
  @override
  String get singular => "Recept";

  @override
  String get recipeDetail_duration => "{0} min.";

  @override
  String get recipeDetail_ingredientCount => "{0:0|žádné|1-|\\0} ingredienc{0:0-4|e|5-|í}";

  @override
  String get recipeDetail_steps => "Postup";

  @override
  String get recipeDetail_deleteLocalRecipe => "Opravdu chcete smazat recept?";

  @override
  String get recipeDetail_deleteLocalRecipe_description => "Tímto smažete recept ze svého zařízení. Pokud nebyl mezitím smazán ze serveru, můžete ho stále získat zpět odtud.";

  @override
  String get recipeDetail_recipeSaved => "Recept uložen";

  @override
  String get recipeDetail_shareText => "Zkuste tento recept: {0}";

  @override
  String get recipeDetail_noIngredients => "Recept neobsahuje žádné ingredience";

  @override
  String get recipe_persistenceIconMeaningLocal => "Uloženo na zařízení";

  @override
  String get recipe_persistenceIconMeaningRemote => "Uloženo na serveru";

  @override
  String get recipe_persistenceIconMeaningTitle => "Zdroj receptu";
}
