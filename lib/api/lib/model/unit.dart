//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// 
class Unit {
  /// Instantiate a new enum with the provided [value].
  const Unit._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unknown = Unit._(r'Unknown');
  static const kg = Unit._(r'Kg');
  static const L = Unit._(r'L');
  static const ml = Unit._(r'Ml');
  static const G = Unit._(r'G');
  static const pieces = Unit._(r'Pieces');
  static const spoons = Unit._(r'Spoons');

  /// List of all possible values in this [enum][Unit].
  static const values = <Unit>[
    unknown,
    kg,
    L,
    ml,
    G,
    pieces,
    spoons,
  ];

  static Unit? fromJson(dynamic value) => UnitTypeTransformer().decode(value);

  static List<Unit>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Unit>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Unit.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Unit] to String,
/// and [decode] dynamic data back to [Unit].
class UnitTypeTransformer {
  factory UnitTypeTransformer() => _instance ??= const UnitTypeTransformer._();

  const UnitTypeTransformer._();

  String encode(Unit data) => data.value;

  /// Decodes a [dynamic value][data] to a Unit.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Unit? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Unknown': return Unit.unknown;
        case r'Kg': return Unit.kg;
        case r'L': return Unit.L;
        case r'Ml': return Unit.ml;
        case r'G': return Unit.G;
        case r'Pieces': return Unit.pieces;
        case r'Spoons': return Unit.spoons;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UnitTypeTransformer] instance.
  static UnitTypeTransformer? _instance;
}

