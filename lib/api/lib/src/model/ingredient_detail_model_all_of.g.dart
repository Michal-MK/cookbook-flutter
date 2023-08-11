// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_detail_model_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class IngredientDetailModelAllOfBuilder {
  void replace(IngredientDetailModelAllOf other);
  void update(void Function(IngredientDetailModelAllOfBuilder) updates);
  String? get id;
  set id(String? id);

  String? get name;
  set name(String? name);

  String? get description;
  set description(String? description);

  String? get imageUrl;
  set imageUrl(String? imageUrl);
}

class _$$IngredientDetailModelAllOf extends $IngredientDetailModelAllOf {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? imageUrl;

  factory _$$IngredientDetailModelAllOf(
          [void Function($IngredientDetailModelAllOfBuilder)? updates]) =>
      (new $IngredientDetailModelAllOfBuilder()..update(updates))._build();

  _$$IngredientDetailModelAllOf._(
      {this.id, this.name, this.description, this.imageUrl})
      : super._();

  @override
  $IngredientDetailModelAllOf rebuild(
          void Function($IngredientDetailModelAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $IngredientDetailModelAllOfBuilder toBuilder() =>
      new $IngredientDetailModelAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $IngredientDetailModelAllOf &&
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
    return (newBuiltValueToStringHelper(r'$IngredientDetailModelAllOf')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class $IngredientDetailModelAllOfBuilder
    implements
        Builder<$IngredientDetailModelAllOf,
            $IngredientDetailModelAllOfBuilder>,
        IngredientDetailModelAllOfBuilder {
  _$$IngredientDetailModelAllOf? _$v;

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

  $IngredientDetailModelAllOfBuilder() {
    $IngredientDetailModelAllOf._defaults(this);
  }

  $IngredientDetailModelAllOfBuilder get _$this {
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
  void replace(covariant $IngredientDetailModelAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$IngredientDetailModelAllOf;
  }

  @override
  void update(void Function($IngredientDetailModelAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $IngredientDetailModelAllOf build() => _build();

  _$$IngredientDetailModelAllOf _build() {
    final _$result = _$v ??
        new _$$IngredientDetailModelAllOf._(
            id: id, name: name, description: description, imageUrl: imageUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
