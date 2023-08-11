// ignore_for_file: non_constant_identifier_names

import 'package:cookbook/texts/texts.dart';

class CsText extends CBTexts {
  @override
  String get drawer_settings => "Nastavení";

  @override
  String get enum_foodTypeUnknown => "Neznámý";

  @override
  String get enum_foodTypeMainDish => "Hlavní Chod";

  @override
  String get enum_foodTypeSoup => "Polévka";

  @override
  String get enum_foodTypeDesert => "Dezert";

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
  String get enum_unitPcs => "ks";

  @override
  String get enum_unitSpoons => "lž.";

  @override
  String get enum_unitTeaSpoons => "čl.";

  @override
  String get enum_unitCups => "hrnek";

  @override
  String get home_ingredientsTab => "Ingredience";

  @override
  String get home_recipesTab => "Recepty";
  
  @override
  String get settings_language => "Jazyk";
  
  @override
  String get settings_theme => "Styl";
  
  @override
  String get settings_title => "Nastavení";
  
  @override
  String get theme_dark => "Tmavý";
  
  @override
  String get theme_light => "Světlý";
  
  @override
  String get elem_ingredient => "Ingredience";

  @override
  String get elem_recipe => "Recept";

  @override
  String get recipeDetail_duration => "{0} min.";

  @override
  String get recipeDetail_ingredientCount => "{0:0|žádné|1-|\\0} ingredienc{0:0-4|e|5-|í}";

  @override
  String get recipeDetail_steps => "Postup";

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

  @override
  String get recipe_persistenceIconMeaningLocal => "Uloženo na zařízení";

  @override
  String get recipe_persistenceIconMeaningRemote => "Uloženo na serveru";

  @override
  String get recipe_persistenceIconMeaningTitle => "Zdroj receptu";

  @override
  String get state_noInternet => "Není připojení k internetu";

  @override
  String get generic_cancel => "Zrušit";

  @override
  String get recipeDetail_deleteLocalRecipe => "Opravdu chcete smazat recept?";

  @override
  String get recipeDetail_recipeSaved => "Recept uložen";

  @override
  String get recipeDetail_shareText => "Zkuste tento recept: {0}";

  @override
  String get recipeDetail_noIngredients => "Recept neobsahuje žádné ingredience";

  @override
  String get ingredientDetail_shareText => "Zkuste tuto ingredienci: {0}";

  @override
  String get generic_notImplemented => "Funkce není zatím implementována";
}
