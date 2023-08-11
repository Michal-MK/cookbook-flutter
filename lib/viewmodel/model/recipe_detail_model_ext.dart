import 'package:cookbook/api/lib/openapi.dart';
import 'package:one_of/one_of.dart';

extension RecipeDetailModelExt on RecipeDetailModel {
  Map<String, dynamic> toMap() {
    return {
      'id': id!,
      'name': name!,
      'description': description!,
      'foodType': foodType!.name,
      'duration': duration!,
      'image': imageUrl ?? '',
    };
  }

  RecipeListModel toListModel() {
    return RecipeListModel((b) => {
          b.id = id,
          b.name = name,
          b.foodType = foodType,
          b.imageUrl = imageUrl,
        });
  }

  static RecipeDetailModel fromMap(Map<String, dynamic> map) {
    return RecipeDetailModel((b) => {
          b.id = map['id'] as String?,
          b.name = map['name'] as String?,
          b.description = map['description'] as String?,
          b.foodType = FoodType.values.firstWhere((element) => element.name == map['foodType'] as String?),
          b.duration = map['duration'] as String?,
          b.imageUrl = map['image'] as String?,
        });
  }
}

extension RecipeListModelExt on RecipeListModel {
  static RecipeListModel fromMap(Map<String, dynamic> map) {
    return RecipeListModel((b) => {
          b.id = map['id'] as String?,
          b.name = map['name'] as String?,
          b.foodType = FoodType.values.firstWhere((element) => element.name == map['foodType'] as String?),
          b.imageUrl = map['image'] as String?,
        });
  }
}

extension RecipeDetailIngredientModelExt on RecipeDetailIngredientModel {
  Map<String, dynamic> toMap(String recipeId) {
    return {
      'recipe_id': recipeId,
      'ingredient_id': (ingredient!.oneOf.value as IngredientListModel).id,
      'amount': amount ?? 0,
      'unit': unit!.name,
      'name': (ingredient!.oneOf.value as IngredientListModel).name!,
      'image': (ingredient!.oneOf.value as IngredientListModel).imageUrl ?? '',
    };
  }

  static RecipeDetailIngredientModel fromMap(Map<String, dynamic> map) {
    return RecipeDetailIngredientModel((b) => b
      ..id = 'some-id'
      ..amount = 1.0
      ..unit = Unit.number0
      ..ingredient.replace(
        RecipeDetailIngredientModelAllOfIngredient(
          (b) => b
            ..oneOf = OneOf.fromValue1(
              value: IngredientListModel((b) => b
                ..id = map['ingredient_id'] as String?
                ..name = map['name'] as String?
                ..imageUrl = map['image'] as String?),
            ),
        ),
      ));
  }

  // return RecipeDetailIngredientModel((b) => {
  //   b.id = map['ingredient_id'] as String?,
  //   b.amount = map['amount'] as double?,
  //   b.unit = Unit.values.firstWhere((element) => element.name == map['unit'] as String?),
  //   b.ingredient = RecipeDetailIngredientModelAllOfIngredientBuilder()..update((bb) {
  //     bb.oneOf = IngredientListModelBuilder()..update((bbb) {
  //       bbb.id = map['ingredient_id'] as String?;
  //       bbb.name = map['name'] as String?;
  //       bbb.imageUrl = map['image'] as String?;
  //     });
  //   }),
  // });
}

// ingredient: RecipeDetailIngredientModelIngredient(
//         id: map['ingredient_id'] as String?,
//         name: map['name'] as String?,
//         imageUrl: map['image'] as String?,
//       ),

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
    return IngredientDetailModel((b) => {
          b.id = map['id'] as String?,
          b.name = map['name'] as String?,
          b.description = map['description'] as String?,
          b.imageUrl = map['image'] as String?,
        });
  }
}
