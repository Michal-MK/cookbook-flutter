// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_detail_model_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class RecipeDetailModelAllOfBuilder {
  void replace(RecipeDetailModelAllOf other);
  void update(void Function(RecipeDetailModelAllOfBuilder) updates);
  String? get id;
  set id(String? id);

  String? get name;
  set name(String? name);

  String? get description;
  set description(String? description);

  String? get duration;
  set duration(String? duration);

  FoodType? get foodType;
  set foodType(FoodType? foodType);

  ListBuilder<RecipeDetailIngredientModel> get ingredientAmounts;
  set ingredientAmounts(
      ListBuilder<RecipeDetailIngredientModel>? ingredientAmounts);

  String? get imageUrl;
  set imageUrl(String? imageUrl);
}

class _$$RecipeDetailModelAllOf extends $RecipeDetailModelAllOf {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? duration;
  @override
  final FoodType? foodType;
  @override
  final BuiltList<RecipeDetailIngredientModel>? ingredientAmounts;
  @override
  final String? imageUrl;

  factory _$$RecipeDetailModelAllOf(
          [void Function($RecipeDetailModelAllOfBuilder)? updates]) =>
      (new $RecipeDetailModelAllOfBuilder()..update(updates))._build();

  _$$RecipeDetailModelAllOf._(
      {this.id,
      this.name,
      this.description,
      this.duration,
      this.foodType,
      this.ingredientAmounts,
      this.imageUrl})
      : super._();

  @override
  $RecipeDetailModelAllOf rebuild(
          void Function($RecipeDetailModelAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $RecipeDetailModelAllOfBuilder toBuilder() =>
      new $RecipeDetailModelAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $RecipeDetailModelAllOf &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        duration == other.duration &&
        foodType == other.foodType &&
        ingredientAmounts == other.ingredientAmounts &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, foodType.hashCode);
    _$hash = $jc(_$hash, ingredientAmounts.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$RecipeDetailModelAllOf')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('duration', duration)
          ..add('foodType', foodType)
          ..add('ingredientAmounts', ingredientAmounts)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class $RecipeDetailModelAllOfBuilder
    implements
        Builder<$RecipeDetailModelAllOf, $RecipeDetailModelAllOfBuilder>,
        RecipeDetailModelAllOfBuilder {
  _$$RecipeDetailModelAllOf? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(covariant String? description) =>
      _$this._description = description;

  String? _duration;
  String? get duration => _$this._duration;
  set duration(covariant String? duration) => _$this._duration = duration;

  FoodType? _foodType;
  FoodType? get foodType => _$this._foodType;
  set foodType(covariant FoodType? foodType) => _$this._foodType = foodType;

  ListBuilder<RecipeDetailIngredientModel>? _ingredientAmounts;
  ListBuilder<RecipeDetailIngredientModel> get ingredientAmounts =>
      _$this._ingredientAmounts ??=
          new ListBuilder<RecipeDetailIngredientModel>();
  set ingredientAmounts(
          covariant ListBuilder<RecipeDetailIngredientModel>?
              ingredientAmounts) =>
      _$this._ingredientAmounts = ingredientAmounts;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(covariant String? imageUrl) => _$this._imageUrl = imageUrl;

  $RecipeDetailModelAllOfBuilder() {
    $RecipeDetailModelAllOf._defaults(this);
  }

  $RecipeDetailModelAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _duration = $v.duration;
      _foodType = $v.foodType;
      _ingredientAmounts = $v.ingredientAmounts?.toBuilder();
      _imageUrl = $v.imageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $RecipeDetailModelAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$RecipeDetailModelAllOf;
  }

  @override
  void update(void Function($RecipeDetailModelAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $RecipeDetailModelAllOf build() => _build();

  _$$RecipeDetailModelAllOf _build() {
    _$$RecipeDetailModelAllOf _$result;
    try {
      _$result = _$v ??
          new _$$RecipeDetailModelAllOf._(
              id: id,
              name: name,
              description: description,
              duration: duration,
              foodType: foodType,
              ingredientAmounts: _ingredientAmounts?.build(),
              imageUrl: imageUrl);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ingredientAmounts';
        _ingredientAmounts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'$RecipeDetailModelAllOf', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
