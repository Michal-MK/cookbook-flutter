// ignore_for_file: non_constant_identifier_names

import 'package:cookbook/api/lib/openapi.dart';
import 'package:cookbook/texts/parsers/localization_component.dart';
import 'package:flutter/material.dart';

abstract class CBTexts extends ChangeNotifier {
  String get home_recipesTab;
  String get home_ingredientsTab;

  String get drawer_settings;

  String get enum_foodTypeUnknown;
  String get enum_foodTypeMainDish;
  String get enum_foodTypeSoup;
  String get enum_foodTypeDesert;

  String get enum_unitUnknown;
  String get enum_unitKg;
  String get enum_unitL;
  String get enum_unitMl;
  String get enum_unitG;
  String get enum_unitPcs;
  String get enum_unitSpoons;
  String get enum_unitTeaSpoons;
  String get enum_unitCups;

  String get theme_light;
  String get theme_dark;

  String get settings_title;
  String get settings_language;
  String get settings_theme;

  String get elem_ingredient;
  String get elem_recipe;

  String get recipeDetail_duration;
  String get recipeDetail_ingredientCount;
  String get recipeDetail_steps;
  String get recipeDetail_deleteLocalRecipe;
  String get recipeDetail_recipeSaved;
  String get recipeDetail_shareText;
  String get recipeDetail_noIngredients;

  String get ingredientDetail_shareText;

  String get ingredientEdit_name;
  String get ingredientEdit_description;
  String get ingredientEdit_uploadImageButtonText;
  String get ingredientEdit_saveButtonText;
  String get ingredientEdit_savingToast;
  String get ingredientEdit_nameEmptyValidation;
  String get ingredientEdit_descriptionEmptyValidation;

  String get recipe_persistenceIconMeaningLocal;
  String get recipe_persistenceIconMeaningRemote;
  String get recipe_persistenceIconMeaningTitle;

  String get state_noInternet;
  String get generic_cancel;
  String get generic_notImplemented;



  String foodTypeToString(FoodType? foodType) {
    switch (foodType) {
      case FoodType.number0: // Unknown
        return enum_foodTypeUnknown;
      case FoodType.number1: // Main dish
        return enum_foodTypeMainDish;
      case FoodType.number2: // Soup
        return enum_foodTypeSoup;
      case FoodType.number3: // Desert
        return enum_foodTypeDesert;
    }
    return enum_foodTypeUnknown;
  }

  String unitToString(Unit unit) {
    switch (unit) {
      case Unit.number0: // Unknown
        return enum_unitUnknown;
      case Unit.number1: // Kg
        return enum_unitKg;
      case Unit.number2: // L
        return enum_unitL;
      case Unit.number3: // Ml
        return enum_unitMl;
      case Unit.number4: // G
        return enum_unitG;
      case Unit.number5: // Pcs
        return enum_unitPcs;
      case Unit.number6: // Spoons
        return enum_unitSpoons;
      case Unit.number7: // Tea Spoons
        return enum_unitTeaSpoons;
      case Unit.number8: // Cups
        return enum_unitCups;
    }
    return enum_unitUnknown;
  }

  String smartFormat(String text, List<Object> args) {
    List<Compartment> parts = _getCompartments(text);
    StringBuffer ret = StringBuffer();

    for (Compartment part in parts) {
      ret.write(part.isPlain ? part.str : part.process(parts, args));
    }
    return ret.toString().replaceAll("\\n", "\n");
  }

  List<Compartment> _getCompartments(String localizedString) {
    List<Compartment> compartments = [];

    int nesting = 0;

    StringBuffer builder = StringBuffer();

    for (String c in localizedString.characters) {
      if (c == '{') {
        if (nesting == 0) {
          compartments.add(Compartment(str: builder.toString()));
          builder.clear();
        } else {
          builder.write(c);
        }
        nesting++;
        continue;
      }
      if (c == '}') {
        if (nesting == 1) {
          compartments.add(Compartment(str: builder.toString(), isArgument: true));
          builder.clear();
        } else {
          builder.write(c);
        }
        nesting--;
        continue;
      }
      builder.write(c);
    }
    if (builder.length > 0) {
      compartments.add(Compartment(str: builder.toString()));
    }

    return compartments.toList();
  }
}
