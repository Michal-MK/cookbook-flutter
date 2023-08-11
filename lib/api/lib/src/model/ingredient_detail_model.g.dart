// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_detail_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IngredientDetailModel extends IngredientDetailModel {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? imageUrl;

  factory _$IngredientDetailModel(
          [void Function(IngredientDetailModelBuilder)? updates]) =>
      (new IngredientDetailModelBuilder()..update(updates))._build();

  _$IngredientDetailModel._(
      {this.id, this.name, this.description, this.imageUrl})
      : super._();

  @override
  IngredientDetailModel rebuild(
          void Function(IngredientDetailModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IngredientDetailModelBuilder toBuilder() =>
      new IngredientDetailModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IngredientDetailModel &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IngredientDetailModel')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class IngredientDetailModelBuilder
    implements
        Builder<IngredientDetailModel, IngredientDetailModelBuilder>,
        IngredientDetailModelAllOfBuilder {
  _$IngredientDetailModel? _$v;

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

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(covariant String? imageUrl) => _$this._imageUrl = imageUrl;

  IngredientDetailModelBuilder() {
    IngredientDetailModel._defaults(this);
  }

  IngredientDetailModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _imageUrl = $v.imageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant IngredientDetailModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IngredientDetailModel;
  }

  @override
  void update(void Function(IngredientDetailModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IngredientDetailModel build() => _build();

  _$IngredientDetailModel _build() {
    final _$result = _$v ??
        new _$IngredientDetailModel._(
            id: id, name: name, description: description, imageUrl: imageUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
