// ignore_for_file: non_constant_identifier_names

import 'package:cookbook/api/lib/openapi.dart';
import 'package:cookbook/texts/generic/enum_localization.dart';
import 'package:cookbook/texts/generic/global.dart';
import 'package:cookbook/texts/generic/home.dart';
import 'package:cookbook/texts/generic/ingredient.dart';
import 'package:cookbook/texts/generic/recipe.dart';
import 'package:cookbook/texts/generic/settings.dart';
import 'package:cookbook/texts/parsers/localization_component.dart';
import 'package:flutter/material.dart';

abstract class CBTexts extends ChangeNotifier {
  // Enums
  EnumLocalization<FoodType> get enum_foodType;
  EnumLocalization<Unit> get enum_unit;

  GlobalTexts get global;

  // Pages
  HomeTexts get home;
  IngredientTexts get ingredient;
  RecipeTexts get recipe;
  SettingsTexts get settings;
  

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
