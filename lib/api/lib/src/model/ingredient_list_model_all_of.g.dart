// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_list_model_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class IngredientListModelAllOfBuilder {
  void replace(IngredientListModelAllOf other);
  void update(void Function(IngredientListModelAllOfBuilder) updates);
  String? get id;
  set id(String? id);

  String? get name;
  set name(String? name);

  String? get imageUrl;
  set imageUrl(String? imageUrl);
}

class _$$IngredientListModelAllOf extends $IngredientListModelAllOf {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? imageUrl;

  factory _$$IngredientListModelAllOf(
          [void Function($IngredientListModelAllOfBuilder)? updates]) =>
      (new $IngredientListModelAllOfBuilder()..update(updates))._build();

  _$$IngredientListModelAllOf._({this.id, this.name, this.imageUrl})
      : super._();

  @override
  $IngredientListModelAllOf rebuild(
          void Function($IngredientListModelAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $IngredientListModelAllOfBuilder toBuilder() =>
      new $IngredientListModelAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $IngredientListModelAllOf &&
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
    return (newBuiltValueToStringHelper(r'$IngredientListModelAllOf')
          ..add('id', id)
          ..add('name', name)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class $IngredientListModelAllOfBuilder
    implements
        Builder<$IngredientListModelAllOf, $IngredientListModelAllOfBuilder>,
        IngredientListModelAllOfBuilder {
  _$$IngredientListModelAllOf? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(covariant String? imageUrl) => _$this._imageUrl = imageUrl;

  $IngredientListModelAllOfBuilder() {
    $IngredientListModelAllOf._defaults(this);
  }

  $IngredientListModelAllOfBuilder get _$this {
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
  void replace(covariant $IngredientListModelAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$IngredientListModelAllOf;
  }

  @override
  void update(void Function($IngredientListModelAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $IngredientListModelAllOf build() => _build();

  _$$IngredientListModelAllOf _build() {
    final _$result = _$v ??
        new _$$IngredientListModelAllOf._(
            id: id, name: name, imageUrl: imageUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
