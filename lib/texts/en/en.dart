// ignore_for_file: non_constant_identifier_names

import 'package:cookbook/api/lib/openapi.dart';
import 'package:cookbook/texts/en/en_global.dart';
import 'package:cookbook/texts/en/en_home.dart';
import 'package:cookbook/texts/en/en_ingredient.dart';
import 'package:cookbook/texts/en/en_recipe.dart';
import 'package:cookbook/texts/en/en_settings.dart';
import 'package:cookbook/texts/generic/enum_localization.dart';
import 'package:cookbook/texts/generic/global.dart';
import 'package:cookbook/texts/generic/home.dart';
import 'package:cookbook/texts/generic/ingredient.dart';
import 'package:cookbook/texts/generic/recipe.dart';
import 'package:cookbook/texts/generic/settings.dart';
import 'package:cookbook/texts/generic/texts.dart';

class EnText extends CBTexts {
  @override
  EnumLocalization<FoodType> get enum_foodType => EnumLocalization<FoodType>({
        FoodType.number0: "Unknown",
        FoodType.number1: "Main Course",
        FoodType.number2: "Soup",
        FoodType.number3: "Dessert",
      });

  @override
  EnumLocalization<Unit> get enum_unit => EnumLocalization<Unit>({
        Unit.number0: "???",
        Unit.number1: "kg",
        Unit.number2: "l",
        Unit.number3: "ml",
        Unit.number4: "g",
        Unit.number5: "pcs.",
        Unit.number6: "sp.",
        Unit.number7: "tsp.",
        Unit.number8: "cup",
      });

  @override
  GlobalTexts get global => EnGlobalTexts();
  @override
  HomeTexts get home => EnHomeTexts();

  @override
  IngredientTexts get ingredient => EnIngredientTexts();

  @override
  RecipeTexts get recipe => EnRecipeTexts();

  @override
  SettingsTexts get settings => EnSettingsTexts();
}
