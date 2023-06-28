// ignore_for_file: non_constant_identifier_names

import 'package:cookbook/texts/texts.dart';

class EnText extends CBTexts {
  @override
  String get drawer_settings => "Settings";

  @override
  String get enum_foodTypeUnknown => "Unknown";

  @override
  String get enum_foodTypeMainSource => "Main Course";

  @override
  String get enum_foodTypeSoup => "Soup";

  @override
  String get enum_foodTypeDesert => "Dessert";

  @override
  String get enum_unitUnknown => "???";

  @override
  String get enum_unitKg => "kg";

  @override
  String get enum_unitL => "l";

  @override
  String get enum_unitMl => "ml";

  @override
  String get enum_unitG => "g";

  @override
  String get enum_unitPcs => "pcs.";

  @override
  String get enum_unitSpoons => "tsp.";

  @override
  String get home_ingredientsTab => "Ingredients";

  @override
  String get home_recipesTab => "Recipes";

  @override
  String get settings_language => "Language";

  @override
  String get settings_theme => "Theme";

  @override
  String get settings_title => "Settings";

  @override
  String get theme_dark => "Dark";

  @override
  String get theme_light => "Light";

  @override
  String get elem_ingredient => "Ingredient";

  @override
  String get elem_recipe => "Recipe";

  @override
  String get recipeDetail_duration => "{0} min.";

  @override
  String get recipeDetail_ingredientCount => "{0:0|no|1-|\\0} ingredient{0:0|s|1||2-|s}";

  @override
  String get recipeDetail_steps => "Steps";

  @override
  String get ingredientEdit_name => "Name";

  @override
  String get ingredientEdit_description => "Description";

  @override
  String get ingredientEdit_uploadImageButtonText => "Upload image";

  @override
  String get ingredientEdit_saveButtonText => "Save";

  @override
  String get ingredientEdit_savingToast => "Saving...";

  @override
  String get ingredientEdit_nameEmptyValidation => "$ingredientEdit_name cannot be empty!";

  @override
  String get ingredientEdit_descriptionEmptyValidation => "$ingredientEdit_description cannot be empty!";

  @override
  String get recipe_persistenceIconMeaningLocal => "Stored on the device";

  @override
  String get recipe_persistenceIconMeaningRemote => "Stored on the server";

  @override
  String get recipe_persistenceIconMeaningTitle => "Recipe storage location";

  @override
  String get state_noInternet => "No internet connection";

  @override
  String get generic_cancel => "Cancel";

  @override
  String get recipeDetail_deleteLocalRecipe => "Do you wish to delete the recipe?";

  @override
  String get recipeDetail_recipeSaved => "Recipe saved";

  @override
  String get recipeDetail_shareText => "Check out this recipe: {0}";

  @override
  String get recipeDetail_noIngredients => "No ingredients for this recipe";

  @override
  String get ingredientDetail_shareText => "Check out this ingredient: {0}";

  @override
  String get generic_notImplemented => "This feature is not implemented yet.";
}
