// ignore_for_file: non_constant_identifier_names

import 'package:cookbook/texts/generic/ingredient.dart';

class EnIngredientTexts implements IngredientTexts {
  @override
  String get singular => "Ingredient";

  @override
  String get ingredientEdit_name => "Name";

  @override
  String get ingredientDetail_shareText => "Check out this ingredient: {0}";

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
}
