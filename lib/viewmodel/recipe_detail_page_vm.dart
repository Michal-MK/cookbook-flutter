import 'package:cookbook/api/lib/openapi.dart';
import 'package:cookbook/persistence/sqlite.dart';
import 'package:cookbook/texts/localization_provider.dart';
import 'package:cookbook/viewmodel/model/recipe_detail_model_ext.dart';
import 'package:cookbook/web_client.dart';
import 'package:flutter/foundation.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:share_plus/share_plus.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class RecipeDetailPageVM extends ChangeNotifier {
  RecipeDetailModel? recipe;
  bool isLocal = false;

  bool saveProcessing = false;

  bool refreshOnPop = false;

  Future init(String id, {RecipeDetailModel? localInstance}) async {
    if (localInstance != null) {
      recipe = localInstance;
      isLocal = true;
      return;
    }
    var response = await COOKBOOK.getRecipesApi().getRecipeById(id: id);
    recipe = response.data;
    notifyListeners();
  }

  Future saveRecipe() async {
    if (saveProcessing) {
      return;
    }
    saveProcessing = true;
    if (isLocal) {
      await SQLite.instance.deleteRecipe(recipe!.id!);
      isLocal = false;
      notifyListeners();
      refreshOnPop ^= true;
      saveProcessing = false;
      return;
    }
    for (var ingredient in recipe!.ingredientAmounts!) {
      SQLite.instance.database.insert('recipe_ingredients', ingredient.toMap(recipe!.id!), conflictAlgorithm: ConflictAlgorithm.ignore);
    }
    SQLite.instance.database.insert('recipes', recipe!.toMap());
    saveProcessing = false;
    isLocal = true;
    notifyListeners();
    refreshOnPop ^= true;
    Fluttertoast.showToast(msg: LocalizationProvider.instance.l.recipe.recipeDetail_recipeSaved);
  }

  Future deleteRecipe() async {
    Fluttertoast.showToast(msg: LocalizationProvider.instance.l.global.NIY);
    // await RecipesApi().deleteRecipe(recipe!.id!);
  }

  Future shareRecipe() async {
    var l = LocalizationProvider.instance.l;
    Share.share(l.smartFormat(l.recipe.recipeDetail_shareText, [recipe!.name!]), subject: l.recipe.singular);
  }

  Future editRecipe() async {
    Fluttertoast.showToast(msg: LocalizationProvider.instance.l.global.NIY);
  }
}
