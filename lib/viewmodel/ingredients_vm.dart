import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:cookbook/api/lib/api.dart';
import 'package:cookbook/texts/localization_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:fluttertoast/fluttertoast.dart';

class IngredientsTabVM extends ChangeNotifier {
  List<IngredientListModel>? ingredients;

  Future init() async {
    ingredients = await IngredientsApi().getIngredientsAll().timeout(const Duration(seconds: 5), onTimeout: () => []);
    notifyListeners();
  }

  Future refresh() async {
    var connectivity = await Connectivity().checkConnectivity();
    if (connectivity == ConnectivityResult.none) {
      ingredients = [];
      notifyListeners();
      Fluttertoast.showToast(msg: LocalizationProvider.instance.l.state_noInternet);
      return;
    }
    ingredients = null;
    notifyListeners();
    ingredients = await IngredientsApi().getIngredientsAll().timeout(const Duration(seconds: 5), onTimeout: () => []);
    notifyListeners();
  }
}
