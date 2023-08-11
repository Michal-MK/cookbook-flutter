// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FoodType _$number0 = const FoodType._('number0');
const FoodType _$number1 = const FoodType._('number1');
const FoodType _$number2 = const FoodType._('number2');
const FoodType _$number3 = const FoodType._('number3');

FoodType _$valueOf(String name) {
  switch (name) {
    case 'number0':
      return _$number0;
    case 'number1':
      return _$number1;
    case 'number2':
      return _$number2;
    case 'number3':
      return _$number3;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<FoodType> _$values = new BuiltSet<FoodType>(const <FoodType>[
  _$number0,
  _$number1,
  _$number2,
  _$number3,
]);

class _$FoodTypeMeta {
  const _$FoodTypeMeta();
  FoodType get number0 => _$number0;
  FoodType get number1 => _$number1;
  FoodType get number2 => _$number2;
  FoodType get number3 => _$number3;
  FoodType valueOf(String name) => _$valueOf(name);
  BuiltSet<FoodType> get values => _$values;
}

mixin _$FoodTypeMixin {
  // ignore: non_constant_identifier_names
  _$FoodTypeMeta get FoodType => const _$FoodTypeMeta();
}

Serializer<FoodType> _$foodTypeSerializer = new _$FoodTypeSerializer();

class _$FoodTypeSerializer implements PrimitiveSerializer<FoodType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number0': 0,
    'number1': 1,
    'number2': 2,
    'number3': 3,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    0: 'number0',
    1: 'number1',
    2: 'number2',
    3: 'number3',
  };

  @override
  final Iterable<Type> types = const <Type>[FoodType];
  @override
  final String wireName = 'FoodType';

  @override
  Object serialize(Serializers serializers, FoodType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FoodType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FoodType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
