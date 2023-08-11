// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_detail_ingredient_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecipeDetailIngredientModel extends RecipeDetailIngredientModel {
  @override
  final String? id;
  @override
  final double? amount;
  @override
  final Unit? unit;
  @override
  final RecipeDetailIngredientModelAllOfIngredient? ingredient;

  factory _$RecipeDetailIngredientModel(
          [void Function(RecipeDetailIngredientModelBuilder)? updates]) =>
      (new RecipeDetailIngredientModelBuilder()..update(updates))._build();

  _$RecipeDetailIngredientModel._(
      {this.id, this.amount, this.unit, this.ingredient})
      : super._();

  @override
  RecipeDetailIngredientModel rebuild(
          void Function(RecipeDetailIngredientModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecipeDetailIngredientModelBuilder toBuilder() =>
      new RecipeDetailIngredientModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecipeDetailIngredientModel &&
        id == other.id &&
        amount == other.amount &&
        unit == other.unit &&
        ingredient == other.ingredient;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, unit.hashCode);
    _$hash = $jc(_$hash, ingredient.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecipeDetailIngredientModel')
          ..add('id', id)
          ..add('amount', amount)
          ..add('unit', unit)
          ..add('ingredient', ingredient))
        .toString();
  }
}

class RecipeDetailIngredientModelBuilder
    implements
        Builder<RecipeDetailIngredientModel,
            RecipeDetailIngredientModelBuilder>,
        RecipeDetailIngredientModelAllOfBuilder {
  _$RecipeDetailIngredientModel? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  double? _amount;
  double? get amount => _$this._amount;
  set amount(covariant double? amount) => _$this._amount = amount;

  Unit? _unit;
  Unit? get unit => _$this._unit;
  set unit(covariant Unit? unit) => _$this._unit = unit;

  RecipeDetailIngredientModelAllOfIngredientBuilder? _ingredient;
  RecipeDetailIngredientModelAllOfIngredientBuilder get ingredient =>
      _$this._ingredient ??=
          new RecipeDetailIngredientModelAllOfIngredientBuilder();
  set ingredient(
          covariant RecipeDetailIngredientModelAllOfIngredientBuilder?
              ingredient) =>
      _$this._ingredient = ingredient;

  RecipeDetailIngredientModelBuilder() {
    RecipeDetailIngredientModel._defaults(this);
  }

  RecipeDetailIngredientModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _amount = $v.amount;
      _unit = $v.unit;
      _ingredient = $v.ingredient?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant RecipeDetailIngredientModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RecipeDetailIngredientModel;
  }

  @override
  void update(void Function(RecipeDetailIngredientModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecipeDetailIngredientModel build() => _build();

  _$RecipeDetailIngredientModel _build() {
    _$RecipeDetailIngredientModel _$result;
    try {
      _$result = _$v ??
          new _$RecipeDetailIngredientModel._(
              id: id,
              amount: amount,
              unit: unit,
              ingredient: _ingredient?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ingredient';
        _ingredient?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RecipeDetailIngredientModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
