//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/ingredient_list_model.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'recipe_detail_ingredient_model_all_of_ingredient.g.dart';

/// RecipeDetailIngredientModelAllOfIngredient
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [imageUrl] 
@BuiltValue()
abstract class RecipeDetailIngredientModelAllOfIngredient implements Built<RecipeDetailIngredientModelAllOfIngredient, RecipeDetailIngredientModelAllOfIngredientBuilder> {
  /// One Of [IngredientListModel]
  OneOf get oneOf;

  RecipeDetailIngredientModelAllOfIngredient._();

  factory RecipeDetailIngredientModelAllOfIngredient([void updates(RecipeDetailIngredientModelAllOfIngredientBuilder b)]) = _$RecipeDetailIngredientModelAllOfIngredient;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecipeDetailIngredientModelAllOfIngredientBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecipeDetailIngredientModelAllOfIngredient> get serializer => _$RecipeDetailIngredientModelAllOfIngredientSerializer();
}

class _$RecipeDetailIngredientModelAllOfIngredientSerializer implements PrimitiveSerializer<RecipeDetailIngredientModelAllOfIngredient> {
  @override
  final Iterable<Type> types = const [RecipeDetailIngredientModelAllOfIngredient, _$RecipeDetailIngredientModelAllOfIngredient];

  @override
  final String wireName = r'RecipeDetailIngredientModelAllOfIngredient';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecipeDetailIngredientModelAllOfIngredient object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    RecipeDetailIngredientModelAllOfIngredient object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  RecipeDetailIngredientModelAllOfIngredient deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecipeDetailIngredientModelAllOfIngredientBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(IngredientListModel), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}

