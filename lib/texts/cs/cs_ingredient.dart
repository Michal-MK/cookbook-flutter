// ignore_for_file: non_constant_identifier_names

import 'package:cookbook/texts/generic/ingredient.dart';

class CsIngredientTexts implements IngredientTexts {
  @override
  String get singular => "Ingredience";

  @override
  String get ingredientDetail_shareText => "Zkuste tuto ingredienci: {0}";

  @override
  String get ingredientEdit_name => "Název";

  @override
  String get ingredientEdit_description => "Popis";

  @override
  String get ingredientEdit_uploadImageButtonText => "Nahrát obrázek";

  @override
  String get ingredientEdit_saveButtonText => "Uložit";

  @override
  String get ingredientEdit_savingToast => "Ukládám...";

  @override
  String get ingredientEdit_nameEmptyValidation => "$ingredientEdit_name nesmí být prázdný!";

  @override
  String get ingredientEdit_descriptionEmptyValidation => "$ingredientEdit_description nesmí být prázdný!";
}
