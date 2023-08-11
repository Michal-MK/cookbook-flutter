// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_list_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IngredientListModel extends IngredientListModel {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? imageUrl;

  factory _$IngredientListModel(
          [void Function(IngredientListModelBuilder)? updates]) =>
      (new IngredientListModelBuilder()..update(updates))._build();

  _$IngredientListModel._({this.id, this.name, this.imageUrl}) : super._();

  @override
  IngredientListModel rebuild(
          void Function(IngredientListModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IngredientListModelBuilder toBuilder() =>
      new IngredientListModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IngredientListModel &&
        id == other.id &&
        name == other.name &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IngredientListModel')
          ..add('id', id)
          ..add('name', name)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class IngredientListModelBuilder
    implements
        Builder<IngredientListModel, IngredientListModelBuilder>,
        IngredientListModelAllOfBuilder {
  _$IngredientListModel? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(covariant String? imageUrl) => _$this._imageUrl = imageUrl;

  IngredientListModelBuilder() {
    IngredientListModel._defaults(this);
  }

  IngredientListModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _imageUrl = $v.imageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant IngredientListModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IngredientListModel;
  }

  @override
  void update(void Function(IngredientListModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IngredientListModel build() => _build();

  _$IngredientListModel _build() {
    final _$result = _$v ??
        new _$IngredientListModel._(id: id, name: name, imageUrl: imageUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
