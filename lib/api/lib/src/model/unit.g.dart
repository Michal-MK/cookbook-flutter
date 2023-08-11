// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Unit _$number0 = const Unit._('number0');
const Unit _$number1 = const Unit._('number1');
const Unit _$number2 = const Unit._('number2');
const Unit _$number3 = const Unit._('number3');
const Unit _$number4 = const Unit._('number4');
const Unit _$number5 = const Unit._('number5');
const Unit _$number6 = const Unit._('number6');
const Unit _$number7 = const Unit._('number7');
const Unit _$number8 = const Unit._('number8');

Unit _$valueOf(String name) {
  switch (name) {
    case 'number0':
      return _$number0;
    case 'number1':
      return _$number1;
    case 'number2':
      return _$number2;
    case 'number3':
      return _$number3;
    case 'number4':
      return _$number4;
    case 'number5':
      return _$number5;
    case 'number6':
      return _$number6;
    case 'number7':
      return _$number7;
    case 'number8':
      return _$number8;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<Unit> _$values = new BuiltSet<Unit>(const <Unit>[
  _$number0,
  _$number1,
  _$number2,
  _$number3,
  _$number4,
  _$number5,
  _$number6,
  _$number7,
  _$number8,
]);

class _$UnitMeta {
  const _$UnitMeta();
  Unit get number0 => _$number0;
  Unit get number1 => _$number1;
  Unit get number2 => _$number2;
  Unit get number3 => _$number3;
  Unit get number4 => _$number4;
  Unit get number5 => _$number5;
  Unit get number6 => _$number6;
  Unit get number7 => _$number7;
  Unit get number8 => _$number8;
  Unit valueOf(String name) => _$valueOf(name);
  BuiltSet<Unit> get values => _$values;
}

mixin _$UnitMixin {
  // ignore: non_constant_identifier_names
  _$UnitMeta get Unit => const _$UnitMeta();
}

Serializer<Unit> _$unitSerializer = new _$UnitSerializer();

class _$UnitSerializer implements PrimitiveSerializer<Unit> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number0': 0,
    'number1': 1,
    'number2': 2,
    'number3': 3,
    'number4': 4,
    'number5': 5,
    'number6': 6,
    'number7': 7,
    'number8': 8,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    0: 'number0',
    1: 'number1',
    2: 'number2',
    3: 'number3',
    4: 'number4',
    5: 'number5',
    6: 'number6',
    7: 'number7',
    8: 'number8',
  };

  @override
  final Iterable<Type> types = const <Type>[Unit];
  @override
  final String wireName = 'Unit';

  @override
  Object serialize(Serializers serializers, Unit object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  Unit deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Unit.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
