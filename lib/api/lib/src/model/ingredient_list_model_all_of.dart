//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ingredient_list_model_all_of.g.dart';

/// IngredientListModelAllOf
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [imageUrl] 
@BuiltValue(instantiable: false)
abstract class IngredientListModelAllOf  {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'imageUrl')
  String? get imageUrl;

  @BuiltValueSerializer(custom: true)
  static Serializer<IngredientListModelAllOf> get serializer => _$IngredientListModelAllOfSerializer();
}

class _$IngredientListModelAllOfSerializer implements PrimitiveSerializer<IngredientListModelAllOf> {
  @override
  final Iterable<Type> types = const [IngredientListModelAllOf];

  @override
  final String wireName = r'IngredientListModelAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IngredientListModelAllOf object, {
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
    IngredientListModelAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  IngredientListModelAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($IngredientListModelAllOf)) as $IngredientListModelAllOf;
  }
}

/// a concrete implementation of [IngredientListModelAllOf], since [IngredientListModelAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $IngredientListModelAllOf implements IngredientListModelAllOf, Built<$IngredientListModelAllOf, $IngredientListModelAllOfBuilder> {
  $IngredientListModelAllOf._();

  factory $IngredientListModelAllOf([void Function($IngredientListModelAllOfBuilder)? updates]) = _$$IngredientListModelAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($IngredientListModelAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$IngredientListModelAllOf> get serializer => _$$IngredientListModelAllOfSerializer();
}

class _$$IngredientListModelAllOfSerializer implements PrimitiveSerializer<$IngredientListModelAllOf> {
  @override
  final Iterable<Type> types = const [$IngredientListModelAllOf, _$$IngredientListModelAllOf];

  @override
  final String wireName = r'$IngredientListModelAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $IngredientListModelAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(IngredientListModelAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IngredientListModelAllOfBuilder result,
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
  $IngredientListModelAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $IngredientListModelAllOfBuilder();
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

