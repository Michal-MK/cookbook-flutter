// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_detail_ingredient_model_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class RecipeDetailIngredientModelAllOfBuilder {
  void replace(RecipeDetailIngredientModelAllOf other);
  void update(void Function(RecipeDetailIngredientModelAllOfBuilder) updates);
  String? get id;
  set id(String? id);

  double? get amount;
  set amount(double? amount);

  Unit? get unit;
  set unit(Unit? unit);

  RecipeDetailIngredientModelAllOfIngredientBuilder get ingredient;
  set ingredient(RecipeDetailIngredientModelAllOfIngredientBuilder? ingredient);
}

class _$$RecipeDetailIngredientModelAllOf
    extends $RecipeDetailIngredientModelAllOf {
  @override
  final String? id;
  @override
  final double? amount;
  @override
  final Unit? unit;
  @override
  final RecipeDetailIngredientModelAllOfIngredient? ingredient;

  factory _$$RecipeDetailIngredientModelAllOf(
          [void Function($RecipeDetailIngredientModelAllOfBuilder)? updates]) =>
      (new $RecipeDetailIngredientModelAllOfBuilder()..update(updates))
          ._build();

  _$$RecipeDetailIngredientModelAllOf._(
      {this.id, this.amount, this.unit, this.ingredient})
      : super._();

  @override
  $RecipeDetailIngredientModelAllOf rebuild(
          void Function($RecipeDetailIngredientModelAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $RecipeDetailIngredientModelAllOfBuilder toBuilder() =>
      new $RecipeDetailIngredientModelAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $RecipeDetailIngredientModelAllOf &&
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
    return (newBuiltValueToStringHelper(r'$RecipeDetailIngredientModelAllOf')
          ..add('id', id)
          ..add('amount', amount)
          ..add('unit', unit)
          ..add('ingredient', ingredient))
        .toString();
  }
}

class $RecipeDetailIngredientModelAllOfBuilder
    implements
        Builder<$RecipeDetailIngredientModelAllOf,
            $RecipeDetailIngredientModelAllOfBuilder>,
        RecipeDetailIngredientModelAllOfBuilder {
  _$$RecipeDetailIngredientModelAllOf? _$v;

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

  $RecipeDetailIngredientModelAllOfBuilder() {
    $RecipeDetailIngredientModelAllOf._defaults(this);
  }

  $RecipeDetailIngredientModelAllOfBuilder get _$this {
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
  void replace(covariant $RecipeDetailIngredientModelAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$RecipeDetailIngredientModelAllOf;
  }

  @override
  void update(
      void Function($RecipeDetailIngredientModelAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $RecipeDetailIngredientModelAllOf build() => _build();

  _$$RecipeDetailIngredientModelAllOf _build() {
    _$$RecipeDetailIngredientModelAllOf _$result;
    try {
      _$result = _$v ??
          new _$$RecipeDetailIngredientModelAllOf._(
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
            r'$RecipeDetailIngredientModelAllOf', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
