//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/recipe_detail_ingredient_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/food_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recipe_detail_model_all_of.g.dart';

/// RecipeDetailModelAllOf
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [description] 
/// * [duration] 
/// * [foodType] 
/// * [ingredientAmounts] 
/// * [imageUrl] 
@BuiltValue(instantiable: false)
abstract class RecipeDetailModelAllOf  {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'duration')
  String? get duration;

  @BuiltValueField(wireName: r'foodType')
  FoodType? get foodType;
  // enum foodTypeEnum {  0,  1,  2,  3,  };

  @BuiltValueField(wireName: r'ingredientAmounts')
  BuiltList<RecipeDetailIngredientModel>? get ingredientAmounts;

  @BuiltValueField(wireName: r'imageUrl')
  String? get imageUrl;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecipeDetailModelAllOf> get serializer => _$RecipeDetailModelAllOfSerializer();
}

class _$RecipeDetailModelAllOfSerializer implements PrimitiveSerializer<RecipeDetailModelAllOf> {
  @override
  final Iterable<Type> types = const [RecipeDetailModelAllOf];

  @override
  final String wireName = r'RecipeDetailModelAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecipeDetailModelAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
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
    if (object.duration != null) {
      yield r'duration';
      yield serializers.serialize(
        object.duration,
        specifiedType: const FullType(String),
      );
    }
    if (object.foodType != null) {
      yield r'foodType';
      yield serializers.serialize(
        object.foodType,
        specifiedType: const FullType(FoodType),
      );
    }
    if (object.ingredientAmounts != null) {
      yield r'ingredientAmounts';
      yield serializers.serialize(
        object.ingredientAmounts,
        specifiedType: const FullType.nullable(BuiltList, [FullType(RecipeDetailIngredientModel)]),
      );
    }
    if (object.imageUrl != null) {
      yield r'imageUrl';
      yield serializers.serialize(
        object.imageUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RecipeDetailModelAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  RecipeDetailModelAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($RecipeDetailModelAllOf)) as $RecipeDetailModelAllOf;
  }
}

/// a concrete implementation of [RecipeDetailModelAllOf], since [RecipeDetailModelAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $RecipeDetailModelAllOf implements RecipeDetailModelAllOf, Built<$RecipeDetailModelAllOf, $RecipeDetailModelAllOfBuilder> {
  $RecipeDetailModelAllOf._();

  factory $RecipeDetailModelAllOf([void Function($RecipeDetailModelAllOfBuilder)? updates]) = _$$RecipeDetailModelAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($RecipeDetailModelAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$RecipeDetailModelAllOf> get serializer => _$$RecipeDetailModelAllOfSerializer();
}

class _$$RecipeDetailModelAllOfSerializer implements PrimitiveSerializer<$RecipeDetailModelAllOf> {
  @override
  final Iterable<Type> types = const [$RecipeDetailModelAllOf, _$$RecipeDetailModelAllOf];

  @override
  final String wireName = r'$RecipeDetailModelAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $RecipeDetailModelAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(RecipeDetailModelAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RecipeDetailModelAllOfBuilder result,
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
        case r'duration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.duration = valueDes;
          break;
        case r'foodType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FoodType),
          ) as FoodType;
          result.foodType = valueDes;
          break;
        case r'ingredientAmounts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(RecipeDetailIngredientModel)]),
          ) as BuiltList<RecipeDetailIngredientModel>?;
          if (valueDes == null) continue;
          result.ingredientAmounts.replace(valueDes);
          break;
        case r'imageUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.imageUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $RecipeDetailModelAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $RecipeDetailModelAllOfBuilder();
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

