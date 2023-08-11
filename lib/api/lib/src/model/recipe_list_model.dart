//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/recipe_list_model_all_of.dart';
import 'package:openapi/src/model/food_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recipe_list_model.g.dart';

/// RecipeListModel
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [foodType] 
/// * [imageUrl] 
@BuiltValue()
abstract class RecipeListModel implements RecipeListModelAllOf, Built<RecipeListModel, RecipeListModelBuilder> {
  RecipeListModel._();

  factory RecipeListModel([void updates(RecipeListModelBuilder b)]) = _$RecipeListModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecipeListModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecipeListModel> get serializer => _$RecipeListModelSerializer();
}

class _$RecipeListModelSerializer implements PrimitiveSerializer<RecipeListModel> {
  @override
  final Iterable<Type> types = const [RecipeListModel, _$RecipeListModel];

  @override
  final String wireName = r'RecipeListModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecipeListModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
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
    RecipeListModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RecipeListModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
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
  RecipeListModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecipeListModelBuilder();
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

