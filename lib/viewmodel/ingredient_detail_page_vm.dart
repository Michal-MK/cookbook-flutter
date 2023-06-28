import 'package:cookbook/api/lib/api.dart';
import 'package:cookbook/texts/localization_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:share_plus/share_plus.dart';

class IngredientDetailPageVM extends ChangeNotifier {
  IngredientDetailModel? ingredient;

  bool refreshOnPop = false;

  Future init(String id) async {
    ingredient = await IngredientsApi().getIngredientById(id);
    notifyListeners();
  }

  Future deleteIngredient() async {
    Fluttertoast.showToast(msg: LocalizationProvider.instance.l.generic_notImplemented);
    // await IngredientsApi().deleteIngredient(ingredient!.id!);
  }

  Future shareIngredient() async {
    var l = LocalizationProvider.instance.l;
    await Share.share(l.smartFormat(l.ingredientDetail_shareText, [ingredient!.name!]), subject: l.elem_ingredient);
  }
}
