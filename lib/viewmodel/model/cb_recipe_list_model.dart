import 'package:cookbook/api/lib/api.dart';

class CBRecipeListModel {
  
  final RecipeListModel instance;
  final RecipeDetailModel? localInstance;
  
  CBRecipeListModel({required this.instance, this.localInstance});

  @override
  int get hashCode => instance.hashCode;

  @override
  bool operator ==(Object other) {
    if (other is CBRecipeListModel) {
      return other.instance.name == instance.name;
    }
    return false;
  }
}