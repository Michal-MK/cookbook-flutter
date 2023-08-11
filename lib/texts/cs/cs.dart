// ignore_for_file: non_constant_identifier_names

import 'package:cookbook/api/lib/openapi.dart';
import 'package:cookbook/texts/cs/cs_global.dart';
import 'package:cookbook/texts/cs/cs_home.dart';
import 'package:cookbook/texts/cs/cs_ingredient.dart';
import 'package:cookbook/texts/cs/cs_recipe.dart';
import 'package:cookbook/texts/cs/cs_settings.dart';
import 'package:cookbook/texts/generic/enum_localization.dart';
import 'package:cookbook/texts/generic/global.dart';
import 'package:cookbook/texts/generic/home.dart';
import 'package:cookbook/texts/generic/ingredient.dart';
import 'package:cookbook/texts/generic/recipe.dart';
import 'package:cookbook/texts/generic/settings.dart';
import 'package:cookbook/texts/generic/texts.dart';

class CsText extends CBTexts {
  @override
  EnumLocalization<FoodType> get enum_foodType => EnumLocalization<FoodType>({
        FoodType.number0: "Neznámý",
        FoodType.number1: "Hlavní Chod",
        FoodType.number2: "Polévka",
        FoodType.number3: "Dezert",
      });

  @override
  EnumLocalization<Unit> get enum_unit => EnumLocalization<Unit>({
        Unit.number0: "???",
        Unit.number1: "kg",
        Unit.number2: "l",
        Unit.number3: "ml",
        Unit.number4: "g",
        Unit.number5: "ks",
        Unit.number6: "lž.",
        Unit.number7: "čl.",
        Unit.number8: "hrnek",
      });

  @override
  GlobalTexts get global => CsGlobalTexts();

  @override
  HomeTexts get home => CsHomeTexts();

  @override
  IngredientTexts get ingredient => CsIngredientTexts();

  @override
  RecipeTexts get recipe => CsRecipeTexts();

  @override
  SettingsTexts get settings => CsSettingsTexts();
}
