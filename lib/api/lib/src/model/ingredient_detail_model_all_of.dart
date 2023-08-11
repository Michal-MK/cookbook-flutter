//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ingredient_detail_model_all_of.g.dart';

/// IngredientDetailModelAllOf
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [description] 
/// * [imageUrl] 
@BuiltValue(instantiable: false)
abstract class IngredientDetailModelAllOf  {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'imageUrl')
  String? get imageUrl;

  @BuiltValueSerializer(custom: true)
  static Serializer<IngredientDetailModelAllOf> get serializer => _$IngredientDetailModelAllOfSerializer();
}

class _$IngredientDetailModelAllOfSerializer implements PrimitiveSerializer<IngredientDetailModelAllOf> {
  @override
  final Iterable<Type> types = const [IngredientDetailModelAllOf];

  @override
  final String wireName = r'IngredientDetailModelAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IngredientDetailModelAllOf object, {
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
        specifiedType: const FullType(String),
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
    IngredientDetailModelAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  IngredientDetailModelAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($IngredientDetailModelAllOf)) as $IngredientDetailModelAllOf;
  }
}

/// a concrete implementation of [IngredientDetailModelAllOf], since [IngredientDetailModelAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $IngredientDetailModelAllOf implements IngredientDetailModelAllOf, Built<$IngredientDetailModelAllOf, $IngredientDetailModelAllOfBuilder> {
  $IngredientDetailModelAllOf._();

  factory $IngredientDetailModelAllOf([void Function($IngredientDetailModelAllOfBuilder)? updates]) = _$$IngredientDetailModelAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($IngredientDetailModelAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$IngredientDetailModelAllOf> get serializer => _$$IngredientDetailModelAllOfSerializer();
}

class _$$IngredientDetailModelAllOfSerializer implements PrimitiveSerializer<$IngredientDetailModelAllOf> {
  @override
  final Iterable<Type> types = const [$IngredientDetailModelAllOf, _$$IngredientDetailModelAllOf];

  @override
  final String wireName = r'$IngredientDetailModelAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $IngredientDetailModelAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(IngredientDetailModelAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IngredientDetailModelAllOfBuilder result,
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
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
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
  $IngredientDetailModelAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $IngredientDetailModelAllOfBuilder();
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

