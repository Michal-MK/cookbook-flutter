// ignore_for_file: constant_identifier_names

import 'package:cookbook/pages/details/ingredient_detail_page.dart';
import 'package:cookbook/pages/details/recipe_detail_page.dart';
import 'package:cookbook/pages/edits/ingredient_edit_page.dart';
import 'package:cookbook/pages/nav/ingredient_detail_args.dart';
import 'package:cookbook/pages/settings.dart';
import 'package:cookbook/viewmodel/ingredient_detail_page_vm.dart';
import 'package:cookbook/viewmodel/recipe_detail_page_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NavConstants {
  static const String HOME = '/home';

  static MaterialPageRoute<NavModel> recipeDetailRoute({Object? args}) {
    return MaterialPageRoute<NavModel>(
      builder: (ctx) => ChangeNotifierProvider.value(
        value: RecipeDetailPageVM(),
        child: const RecipeDetailPage(),
      ),
      settings: RouteSettings(arguments: args),
    );
  }

  static MaterialPageRoute<NavModel> ingredientDetailRoute({Object? args}) {
    return MaterialPageRoute<NavModel>(
      builder: (ctx) => ChangeNotifierProvider.value(
        value: IngredientDetailPageVM(),
        child: const IngredientDetailPage(),
      ),
      settings: RouteSettings(arguments: args),
    );
  }

  static MaterialPageRoute<NavModel> ingredientEditRoute(IngredientDetailArgs args) {
    return MaterialPageRoute<NavModel>(
      builder: (ctx) => const IngredientEditPage(),
      settings: RouteSettings(arguments: args),
    );
  }

  static MaterialPageRoute<NavModel> settingsRoute({Object? args}) {
    return MaterialPageRoute<NavModel>(
      builder: (ctx) => const SettingsPage(),
      settings: RouteSettings(arguments: args),
    );
  }
}

class NavModel {
  final bool refresh;

  NavModel({this.refresh = false});

  static NavModel withRefresh = NavModel(refresh: true);
}
