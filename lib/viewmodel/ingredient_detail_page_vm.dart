import 'package:cookbook/api/lib/openapi.dart';
import 'package:cookbook/texts/localization_provider.dart';
import 'package:cookbook/web_client.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:share_plus/share_plus.dart';

class IngredientDetailPageVM extends ChangeNotifier {
  IngredientDetailModel? ingredient;

  bool refreshOnPop = false;

  Future init(String id) async {
    var response = await COOKBOOK.getIngredientsApi().getIngredientById(id: id);
    ingredient = response.data;
    notifyListeners();
  }

  Future deleteIngredient() async {
    Fluttertoast.showToast(msg: LocalizationProvider.instance.l.global.NIY);
    // await IngredientsApi().deleteIngredient(ingredient!.id!);
  }

  Future shareIngredient() async {
    var l = LocalizationProvider.instance.l;
    await Share.share(l.smartFormat(l.ingredient.ingredientDetail_shareText, [ingredient!.name!]), subject: l.ingredient.singular);
  }
}
