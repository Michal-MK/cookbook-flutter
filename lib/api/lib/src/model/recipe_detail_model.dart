//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/recipe_detail_ingredient_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/recipe_detail_model_all_of.dart';
import 'package:openapi/src/model/food_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recipe_detail_model.g.dart';

/// RecipeDetailModel
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [description] 
/// * [duration] 
/// * [foodType] 
/// * [ingredientAmounts] 
/// * [imageUrl] 
@BuiltValue()
abstract class RecipeDetailModel implements RecipeDetailModelAllOf, Built<RecipeDetailModel, RecipeDetailModelBuilder> {
  RecipeDetailModel._();

  factory RecipeDetailModel([void updates(RecipeDetailModelBuilder b)]) = _$RecipeDetailModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecipeDetailModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecipeDetailModel> get serializer => _$RecipeDetailModelSerializer();
}

class _$RecipeDetailModelSerializer implements PrimitiveSerializer<RecipeDetailModel> {
  @override
  final Iterable<Type> types = const [RecipeDetailModel, _$RecipeDetailModel];

  @override
  final String wireName = r'RecipeDetailModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecipeDetailModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.duration != null) {
      yield r'duration';
      yield serializers.serialize(
        object.duration,
        specifiedType: const FullType(String),
      );
    }
    if (object.ingredientAmounts != null) {
      yield r'ingredientAmounts';
      yield serializers.serialize(
        object.ingredientAmounts,
        specifiedType: const FullType.nullable(BuiltList, [FullType(RecipeDetailIngredientModel)]),
      );
    }
    if (object.foodType != null) {
      yield r'foodType';
      yield serializers.serialize(
        object.foodType,
        specifiedType: const FullType(FoodType),
      );
    }
    if (object.imageUrl != null) {
      yield r'imageUrl';
      yield serializers.serialize(
        object.imageUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RecipeDetailModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RecipeDetailModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'duration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.duration = valueDes;
          break;
        case r'ingredientAmounts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(RecipeDetailIngredientModel)]),
          ) as BuiltList<RecipeDetailIngredientModel>?;
          if (valueDes == null) continue;
          result.ingredientAmounts.replace(valueDes);
          break;
        case r'foodType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FoodType),
          ) as FoodType;
          result.foodType = valueDes;
          break;
        case r'imageUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.imageUrl = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RecipeDetailModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecipeDetailModelBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

