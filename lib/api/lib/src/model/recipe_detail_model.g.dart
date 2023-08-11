// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_detail_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecipeDetailModel extends RecipeDetailModel {
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

  factory _$RecipeDetailModel(
          [void Function(RecipeDetailModelBuilder)? updates]) =>
      (new RecipeDetailModelBuilder()..update(updates))._build();

  _$RecipeDetailModel._(
      {this.id,
      this.name,
      this.description,
      this.duration,
      this.foodType,
      this.ingredientAmounts,
      this.imageUrl})
      : super._();

  @override
  RecipeDetailModel rebuild(void Function(RecipeDetailModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecipeDetailModelBuilder toBuilder() =>
      new RecipeDetailModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecipeDetailModel &&
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
    return (newBuiltValueToStringHelper(r'RecipeDetailModel')
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

class RecipeDetailModelBuilder
    implements
        Builder<RecipeDetailModel, RecipeDetailModelBuilder>,
        RecipeDetailModelAllOfBuilder {
  _$RecipeDetailModel? _$v;

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

  RecipeDetailModelBuilder() {
    RecipeDetailModel._defaults(this);
  }

  RecipeDetailModelBuilder get _$this {
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
  void replace(covariant RecipeDetailModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RecipeDetailModel;
  }

  @override
  void update(void Function(RecipeDetailModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecipeDetailModel build() => _build();

  _$RecipeDetailModel _build() {
    _$RecipeDetailModel _$result;
    try {
      _$result = _$v ??
          new _$RecipeDetailModel._(
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
            r'RecipeDetailModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
