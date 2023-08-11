//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/food_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recipe_list_model_all_of.g.dart';

/// RecipeListModelAllOf
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [foodType] 
/// * [imageUrl] 
@BuiltValue(instantiable: false)
abstract class RecipeListModelAllOf  {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'foodType')
  FoodType? get foodType;
  // enum foodTypeEnum {  0,  1,  2,  3,  };

  @BuiltValueField(wireName: r'imageUrl')
  String? get imageUrl;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecipeListModelAllOf> get serializer => _$RecipeListModelAllOfSerializer();
}

class _$RecipeListModelAllOfSerializer implements PrimitiveSerializer<RecipeListModelAllOf> {
  @override
  final Iterable<Type> types = const [RecipeListModelAllOf];

  @override
  final String wireName = r'RecipeListModelAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecipeListModelAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
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
    RecipeListModelAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  RecipeListModelAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($RecipeListModelAllOf)) as $RecipeListModelAllOf;
  }
}

/// a concrete implementation of [RecipeListModelAllOf], since [RecipeListModelAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $RecipeListModelAllOf implements RecipeListModelAllOf, Built<$RecipeListModelAllOf, $RecipeListModelAllOfBuilder> {
  $RecipeListModelAllOf._();

  factory $RecipeListModelAllOf([void Function($RecipeListModelAllOfBuilder)? updates]) = _$$RecipeListModelAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($RecipeListModelAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$RecipeListModelAllOf> get serializer => _$$RecipeListModelAllOfSerializer();
}

class _$$RecipeListModelAllOfSerializer implements PrimitiveSerializer<$RecipeListModelAllOf> {
  @override
  final Iterable<Type> types = const [$RecipeListModelAllOf, _$$RecipeListModelAllOf];

  @override
  final String wireName = r'$RecipeListModelAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $RecipeListModelAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(RecipeListModelAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RecipeListModelAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $RecipeListModelAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $RecipeListModelAllOfBuilder();
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

