import 'package:cookbook/api/lib/api.dart';

extension RecipeDetailModelExt on RecipeDetailModel {
  Map<String, dynamic> toMap() {
    return {
      'id': id!,
      'name': name!,
      'description': description!,
      'foodType': foodType!.value,
      'duration': duration!,
      'image': imageUrl ?? '',
    };
  }

  RecipeListModel toListModel() {
    return RecipeListModel(
      id: id!,
      name: name!,
      foodType: foodType!,
      imageUrl: imageUrl ?? '',
    );
  }

  static RecipeDetailModel fromMap(Map<String, dynamic> map) {
    return RecipeDetailModel(
      id: map['id'] as String?,
      name: map['name'] as String?,
      description: map['description'] as String?,
      foodType: FoodType.values.firstWhere((element) => element.value == map['foodType'] as String?),
      duration: map['duration'] as String?,
      imageUrl: map['image'] as String?,
    );
  }
}

extension RecipeListModelExt on RecipeListModel {
  static RecipeListModel fromMap(Map<String, dynamic> map) {
    return RecipeListModel(
      id: map['id'] as String?,
      name: map['name'] as String?,
      foodType: FoodType.values.firstWhere((element) => element.value == map['foodType'] as String?),
      imageUrl: map['image'] as String?,
    );
  }
}

extension RecipeDetailIngredientModelExt on RecipeDetailIngredientModel {
  Map<String, dynamic> toMap(String recipeId) {
    return {
      'recipe_id': recipeId,
      'ingredient_id': ingredient!.id!,
      'amount': amount ?? 0,
      'unit': unit!.value,
      'name': ingredient!.name!,
      'image': ingredient!.imageUrl ?? '',
    };
  }

  static RecipeDetailIngredientModel fromMap(Map<String, dynamic> map) {
    return RecipeDetailIngredientModel(
      id: map['ingredient_id'] as String?,
      amount: map['amount'] as double?,
      unit: Unit.values.firstWhere((element) => element.value == map['unit'] as String?),
      ingredient: RecipeDetailIngredientModelIngredient(
        id: map['ingredient_id'] as String?,
        name: map['name'] as String?,
        imageUrl: map['image'] as String?,
      ),
    );
  }
}

extension IngredientDetailModelExt on IngredientDetailModel {
  Map<String, dynamic> toMap() {
    return {
      'id': id!,
      'name': name!,
      'description': description!,
      'image': imageUrl ?? '',
    };
  }

  static IngredientDetailModel fromMap(Map<String, dynamic> map) {
    return IngredientDetailModel(
      id: map['id'] as String?,
      name: map['name'] as String?,
      description: map['description'] as String?,
      imageUrl: map['image'] as String?,
    );
  }
}
