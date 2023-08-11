// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_detail_ingredient_model_all_of_ingredient.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecipeDetailIngredientModelAllOfIngredient
    extends RecipeDetailIngredientModelAllOfIngredient {
  @override
  final OneOf oneOf;

  factory _$RecipeDetailIngredientModelAllOfIngredient(
          [void Function(RecipeDetailIngredientModelAllOfIngredientBuilder)?
              updates]) =>
      (new RecipeDetailIngredientModelAllOfIngredientBuilder()..update(updates))
          ._build();

  _$RecipeDetailIngredientModelAllOfIngredient._({required this.oneOf})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        oneOf, r'RecipeDetailIngredientModelAllOfIngredient', 'oneOf');
  }

  @override
  RecipeDetailIngredientModelAllOfIngredient rebuild(
          void Function(RecipeDetailIngredientModelAllOfIngredientBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecipeDetailIngredientModelAllOfIngredientBuilder toBuilder() =>
      new RecipeDetailIngredientModelAllOfIngredientBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecipeDetailIngredientModelAllOfIngredient &&
        oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'RecipeDetailIngredientModelAllOfIngredient')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class RecipeDetailIngredientModelAllOfIngredientBuilder
    implements
        Builder<RecipeDetailIngredientModelAllOfIngredient,
            RecipeDetailIngredientModelAllOfIngredientBuilder> {
  _$RecipeDetailIngredientModelAllOfIngredient? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  RecipeDetailIngredientModelAllOfIngredientBuilder() {
    RecipeDetailIngredientModelAllOfIngredient._defaults(this);
  }

  RecipeDetailIngredientModelAllOfIngredientBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecipeDetailIngredientModelAllOfIngredient other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RecipeDetailIngredientModelAllOfIngredient;
  }

  @override
  void update(
      void Function(RecipeDetailIngredientModelAllOfIngredientBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  RecipeDetailIngredientModelAllOfIngredient build() => _build();

  _$RecipeDetailIngredientModelAllOfIngredient _build() {
    final _$result = _$v ??
        new _$RecipeDetailIngredientModelAllOfIngredient._(
            oneOf: BuiltValueNullFieldError.checkNotNull(
                oneOf, r'RecipeDetailIngredientModelAllOfIngredient', 'oneOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
