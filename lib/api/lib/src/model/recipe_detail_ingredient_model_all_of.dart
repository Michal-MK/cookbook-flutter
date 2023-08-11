//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/unit.dart';
import 'package:openapi/src/model/recipe_detail_ingredient_model_all_of_ingredient.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recipe_detail_ingredient_model_all_of.g.dart';

/// RecipeDetailIngredientModelAllOf
///
/// Properties:
/// * [id] 
/// * [amount] 
/// * [unit] 
/// * [ingredient] 
@BuiltValue(instantiable: false)
abstract class RecipeDetailIngredientModelAllOf  {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'amount')
  double? get amount;

  @BuiltValueField(wireName: r'unit')
  Unit? get unit;
  // enum unitEnum {  0,  1,  2,  3,  4,  5,  6,  7,  8,  };

  @BuiltValueField(wireName: r'ingredient')
  RecipeDetailIngredientModelAllOfIngredient? get ingredient;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecipeDetailIngredientModelAllOf> get serializer => _$RecipeDetailIngredientModelAllOfSerializer();
}

class _$RecipeDetailIngredientModelAllOfSerializer implements PrimitiveSerializer<RecipeDetailIngredientModelAllOf> {
  @override
  final Iterable<Type> types = const [RecipeDetailIngredientModelAllOf];

  @override
  final String wireName = r'RecipeDetailIngredientModelAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecipeDetailIngredientModelAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType.nullable(String),
      );
    }
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
  }

  @override
  Object serialize(
    Serializers serializers,
    RecipeDetailIngredientModelAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  RecipeDetailIngredientModelAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($RecipeDetailIngredientModelAllOf)) as $RecipeDetailIngredientModelAllOf;
  }
}

/// a concrete implementation of [RecipeDetailIngredientModelAllOf], since [RecipeDetailIngredientModelAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $RecipeDetailIngredientModelAllOf implements RecipeDetailIngredientModelAllOf, Built<$RecipeDetailIngredientModelAllOf, $RecipeDetailIngredientModelAllOfBuilder> {
  $RecipeDetailIngredientModelAllOf._();

  factory $RecipeDetailIngredientModelAllOf([void Function($RecipeDetailIngredientModelAllOfBuilder)? updates]) = _$$RecipeDetailIngredientModelAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($RecipeDetailIngredientModelAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$RecipeDetailIngredientModelAllOf> get serializer => _$$RecipeDetailIngredientModelAllOfSerializer();
}

class _$$RecipeDetailIngredientModelAllOfSerializer implements PrimitiveSerializer<$RecipeDetailIngredientModelAllOf> {
  @override
  final Iterable<Type> types = const [$RecipeDetailIngredientModelAllOf, _$$RecipeDetailIngredientModelAllOf];

  @override
  final String wireName = r'$RecipeDetailIngredientModelAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $RecipeDetailIngredientModelAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(RecipeDetailIngredientModelAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RecipeDetailIngredientModelAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $RecipeDetailIngredientModelAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $RecipeDetailIngredientModelAllOfBuilder();
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

