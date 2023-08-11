//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:openapi/src/date_serializer.dart';
import 'package:openapi/src/model/date.dart';

import 'package:openapi/src/model/food_type.dart';
import 'package:openapi/src/model/ingredient_detail_model.dart';
import 'package:openapi/src/model/ingredient_detail_model_all_of.dart';
import 'package:openapi/src/model/ingredient_list_model.dart';
import 'package:openapi/src/model/ingredient_list_model_all_of.dart';
import 'package:openapi/src/model/recipe_detail_ingredient_model.dart';
import 'package:openapi/src/model/recipe_detail_ingredient_model_all_of.dart';
import 'package:openapi/src/model/recipe_detail_ingredient_model_all_of_ingredient.dart';
import 'package:openapi/src/model/recipe_detail_model.dart';
import 'package:openapi/src/model/recipe_detail_model_all_of.dart';
import 'package:openapi/src/model/recipe_list_model.dart';
import 'package:openapi/src/model/recipe_list_model_all_of.dart';
import 'package:openapi/src/model/unit.dart';

part 'serializers.g.dart';

@SerializersFor([
  FoodType,
  IngredientDetailModel,
  IngredientDetailModelAllOf,$IngredientDetailModelAllOf,
  IngredientListModel,
  IngredientListModelAllOf,$IngredientListModelAllOf,
  RecipeDetailIngredientModel,
  RecipeDetailIngredientModelAllOf,$RecipeDetailIngredientModelAllOf,
  RecipeDetailIngredientModelAllOfIngredient,
  RecipeDetailModel,
  RecipeDetailModelAllOf,$RecipeDetailModelAllOf,
  RecipeListModel,
  RecipeListModelAllOf,$RecipeListModelAllOf,
  Unit,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(RecipeListModel)]),
        () => ListBuilder<RecipeListModel>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(IngredientListModel)]),
        () => ListBuilder<IngredientListModel>(),
      )
      ..add(IngredientDetailModelAllOf.serializer)
      ..add(IngredientListModelAllOf.serializer)
      ..add(RecipeDetailIngredientModelAllOf.serializer)
      ..add(RecipeDetailModelAllOf.serializer)
      ..add(RecipeListModelAllOf.serializer)
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
