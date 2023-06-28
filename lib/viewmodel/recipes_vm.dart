import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:cookbook/api/lib/api.dart';
import 'package:cookbook/persistence/sqlite.dart';
import 'package:cookbook/texts/localization_provider.dart';
import 'package:cookbook/viewmodel/model/cb_recipe_list_model.dart';
import 'package:cookbook/viewmodel/model/recipe_detail_model_ext.dart';
import 'package:flutter/foundation.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RecipesTabVM extends ChangeNotifier {
  List<CBRecipeListModel>? remoteRecipes;
  List<CBRecipeListModel>? localRecipes;
  List<CBRecipeListModel> get recipes => {...localRecipes ?? [], ...remoteRecipes ?? []}.toList();

  Future init() async {
    SQLite.instance.getRecipes().then((value) {
      localRecipes = value.map((e) => CBRecipeListModel(localInstance: e, instance: e.toListModel())).toList();
      notifyListeners();
    });

    if (await handleNoInternet()) {
      return;
    }

    RecipesApi().getRecipesAll().timeout(const Duration(seconds: 5), onTimeout: () => []).then((value) {
      remoteRecipes = (value ?? []).map((e) => CBRecipeListModel(instance: e)).toList();
      notifyListeners();
    });
  }

  Future refresh() async {
    remoteRecipes = null;
    localRecipes = null;
    notifyListeners();

    SQLite.instance.getRecipes().then((value) {
      localRecipes = value.map((e) => CBRecipeListModel(localInstance: e, instance: e.toListModel())).toList();
      notifyListeners();
    });

    if (await handleNoInternet()) {
      return;
    }

    RecipesApi().getRecipesAll().timeout(const Duration(seconds: 5), onTimeout: () => []).then((value) {
      remoteRecipes = (value ?? []).map((e) => CBRecipeListModel(instance: e)).toList();
      notifyListeners();
    });
  }

  Future<bool> handleNoInternet() async {
    var connectivity = await Connectivity().checkConnectivity();
    if (connectivity == ConnectivityResult.none) {
      remoteRecipes = [];
      notifyListeners();
      Fluttertoast.showToast(msg: LocalizationProvider.instance.l.state_noInternet);
      return true; // This should not be a bool
    }
    return false;
  }
}
