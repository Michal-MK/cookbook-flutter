// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_list_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecipeListModel extends RecipeListModel {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final FoodType? foodType;
  @override
  final String? imageUrl;

  factory _$RecipeListModel([void Function(RecipeListModelBuilder)? updates]) =>
      (new RecipeListModelBuilder()..update(updates))._build();

  _$RecipeListModel._({this.id, this.name, this.foodType, this.imageUrl})
      : super._();

  @override
  RecipeListModel rebuild(void Function(RecipeListModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecipeListModelBuilder toBuilder() =>
      new RecipeListModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecipeListModel &&
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
    return (newBuiltValueToStringHelper(r'RecipeListModel')
          ..add('id', id)
          ..add('name', name)
          ..add('foodType', foodType)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class RecipeListModelBuilder
    implements
        Builder<RecipeListModel, RecipeListModelBuilder>,
        RecipeListModelAllOfBuilder {
  _$RecipeListModel? _$v;

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

  RecipeListModelBuilder() {
    RecipeListModel._defaults(this);
  }

  RecipeListModelBuilder get _$this {
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
  void replace(covariant RecipeListModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RecipeListModel;
  }

  @override
  void update(void Function(RecipeListModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecipeListModel build() => _build();

  _$RecipeListModel _build() {
    final _$result = _$v ??
        new _$RecipeListModel._(
            id: id, name: name, foodType: foodType, imageUrl: imageUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
