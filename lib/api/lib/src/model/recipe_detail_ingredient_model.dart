//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/recipe_detail_ingredient_model_all_of.dart';
import 'package:openapi/src/model/unit.dart';
import 'package:openapi/src/model/recipe_detail_ingredient_model_all_of_ingredient.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recipe_detail_ingredient_model.g.dart';

/// RecipeDetailIngredientModel
///
/// Properties:
/// * [id] 
/// * [amount] 
/// * [unit] 
/// * [ingredient] 
@BuiltValue()
abstract class RecipeDetailIngredientModel implements RecipeDetailIngredientModelAllOf, Built<RecipeDetailIngredientModel, RecipeDetailIngredientModelBuilder> {
  RecipeDetailIngredientModel._();

  factory RecipeDetailIngredientModel([void updates(RecipeDetailIngredientModelBuilder b)]) = _$RecipeDetailIngredientModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecipeDetailIngredientModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecipeDetailIngredientModel> get serializer => _$RecipeDetailIngredientModelSerializer();
}

class _$RecipeDetailIngredientModelSerializer implements PrimitiveSerializer<RecipeDetailIngredientModel> {
  @override
  final Iterable<Type> types = const [RecipeDetailIngredientModel, _$RecipeDetailIngredientModel];

  @override
  final String wireName = r'RecipeDetailIngredientModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecipeDetailIngredientModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.amount != null) {
      yield r'amount';
      yield serializers.serialize(
        object.amount,
        specifiedType: const FullType(double),
      );
    }
    if (object.unit != null) {
      yield r'unit';
      yield serializers.serialize(
        object.unit,
        specifiedType: const FullType(Unit),
      );
    }
    if (object.ingredient != null) {
      yield r'ingredient';
      yield serializers.serialize(
        object.ingredient,
        specifiedType: const FullType.nullable(RecipeDetailIngredientModelAllOfIngredient),
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
    RecipeDetailIngredientModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RecipeDetailIngredientModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.amount = valueDes;
          break;
        case r'unit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Unit),
          ) as Unit;
          result.unit = valueDes;
          break;
        case r'ingredient':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RecipeDetailIngredientModelAllOfIngredient),
          ) as RecipeDetailIngredientModelAllOfIngredient?;
          if (valueDes == null) continue;
          result.ingredient.replace(valueDes);
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
  RecipeDetailIngredientModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecipeDetailIngredientModelBuilder();
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

