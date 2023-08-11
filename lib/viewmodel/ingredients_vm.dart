import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:cookbook/api/lib/openapi.dart';
import 'package:cookbook/texts/localization_provider.dart';
import 'package:cookbook/viewmodel/interfaces/refreshable.dart';
import 'package:cookbook/web_client.dart';
import 'package:flutter/foundation.dart';
import 'package:fluttertoast/fluttertoast.dart';

class IngredientsTabVM extends ChangeNotifier implements IRefreshable {
  List<IngredientListModel>? ingredients;

  Future init() async {
    var response = await COOKBOOK.getIngredientsApi().getIngredientsAll();
    ingredients = response.data?.toList();
    notifyListeners();
  }

  @override
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
    var response = await COOKBOOK.getIngredientsApi().getIngredientsAll();
    ingredients = response.data?.toList();
    notifyListeners();
  }
}
