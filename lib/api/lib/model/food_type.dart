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
class FoodType {
  /// Instantiate a new enum with the provided [value].
  const FoodType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unknown = FoodType._(r'Unknown');
  static const mainDish = FoodType._(r'MainDish');
  static const soup = FoodType._(r'Soup');
  static const dessert = FoodType._(r'Dessert');

  /// List of all possible values in this [enum][FoodType].
  static const values = <FoodType>[
    unknown,
    mainDish,
    soup,
    dessert,
  ];

  static FoodType? fromJson(dynamic value) => FoodTypeTypeTransformer().decode(value);

  static List<FoodType>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FoodType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FoodType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [FoodType] to String,
/// and [decode] dynamic data back to [FoodType].
class FoodTypeTypeTransformer {
  factory FoodTypeTypeTransformer() => _instance ??= const FoodTypeTypeTransformer._();

  const FoodTypeTypeTransformer._();

  String encode(FoodType data) => data.value;

  /// Decodes a [dynamic value][data] to a FoodType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FoodType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Unknown': return FoodType.unknown;
        case r'MainDish': return FoodType.mainDish;
        case r'Soup': return FoodType.soup;
        case r'Dessert': return FoodType.dessert;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FoodTypeTypeTransformer] instance.
  static FoodTypeTypeTransformer? _instance;
}

