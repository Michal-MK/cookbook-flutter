// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_list_model_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class RecipeListModelAllOfBuilder {
  void replace(RecipeListModelAllOf other);
  void update(void Function(RecipeListModelAllOfBuilder) updates);
  String? get id;
  set id(String? id);

  String? get name;
  set name(String? name);

  FoodType? get foodType;
  set foodType(FoodType? foodType);

  String? get imageUrl;
  set imageUrl(String? imageUrl);
}

class _$$RecipeListModelAllOf extends $RecipeListModelAllOf {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final FoodType? foodType;
  @override
  final String? imageUrl;

  factory _$$RecipeListModelAllOf(
          [void Function($RecipeListModelAllOfBuilder)? updates]) =>
      (new $RecipeListModelAllOfBuilder()..update(updates))._build();

  _$$RecipeListModelAllOf._({this.id, this.name, this.foodType, this.imageUrl})
      : super._();

  @override
  $RecipeListModelAllOf rebuild(
          void Function($RecipeListModelAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $RecipeListModelAllOfBuilder toBuilder() =>
      new $RecipeListModelAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $RecipeListModelAllOf &&
        id == other.id &&
        name == other.name &&
        foodType == other.foodType &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, foodType.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$RecipeListModelAllOf')
          ..add('id', id)
          ..add('name', name)
          ..add('foodType', foodType)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class $RecipeListModelAllOfBuilder
    implements
        Builder<$RecipeListModelAllOf, $RecipeListModelAllOfBuilder>,
        RecipeListModelAllOfBuilder {
  _$$RecipeListModelAllOf? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  FoodType? _foodType;
  FoodType? get foodType => _$this._foodType;
  set foodType(covariant FoodType? foodType) => _$this._foodType = foodType;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(covariant String? imageUrl) => _$this._imageUrl = imageUrl;

  $RecipeListModelAllOfBuilder() {
    $RecipeListModelAllOf._defaults(this);
  }

  $RecipeListModelAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _foodType = $v.foodType;
      _imageUrl = $v.imageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $RecipeListModelAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$RecipeListModelAllOf;
  }

  @override
  void update(void Function($RecipeListModelAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $RecipeListModelAllOf build() => _build();

  _$$RecipeListModelAllOf _build() {
    final _$result = _$v ??
        new _$$RecipeListModelAllOf._(
            id: id, name: name, foodType: foodType, imageUrl: imageUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
