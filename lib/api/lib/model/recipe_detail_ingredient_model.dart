//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RecipeDetailIngredientModel {
  /// Returns a new [RecipeDetailIngredientModel] instance.
  RecipeDetailIngredientModel({
    this.id,
    this.amount,
    this.unit,
    this.ingredient,
  });

  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? amount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Unit? unit;

  RecipeDetailIngredientModelIngredient? ingredient;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RecipeDetailIngredientModel &&
     other.id == id &&
     other.amount == amount &&
     other.unit == unit &&
     other.ingredient == ingredient;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (amount == null ? 0 : amount!.hashCode) +
    (unit == null ? 0 : unit!.hashCode) +
    (ingredient == null ? 0 : ingredient!.hashCode);

  @override
  String toString() => 'RecipeDetailIngredientModel[id=$id, amount=$amount, unit=$unit, ingredient=$ingredient]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.amount != null) {
      json[r'amount'] = this.amount;
    } else {
      json[r'amount'] = null;
    }
    if (this.unit != null) {
      json[r'unit'] = this.unit;
    } else {
      json[r'unit'] = null;
    }
    if (this.ingredient != null) {
      json[r'ingredient'] = this.ingredient;
    } else {
      json[r'ingredient'] = null;
    }
    return json;
  }

  /// Returns a new [RecipeDetailIngredientModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RecipeDetailIngredientModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RecipeDetailIngredientModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RecipeDetailIngredientModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RecipeDetailIngredientModel(
        id: mapValueOfType<String>(json, r'id'),
        amount: mapValueOfType<double>(json, r'amount'),
        unit: Unit.fromJson(json[r'unit']),
        ingredient: RecipeDetailIngredientModelIngredient.fromJson(json[r'ingredient']),
      );
    }
    return null;
  }

  static List<RecipeDetailIngredientModel>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RecipeDetailIngredientModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RecipeDetailIngredientModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RecipeDetailIngredientModel> mapFromJson(dynamic json) {
    final map = <String, RecipeDetailIngredientModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RecipeDetailIngredientModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RecipeDetailIngredientModel-objects as value to a dart map
  static Map<String, List<RecipeDetailIngredientModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RecipeDetailIngredientModel>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RecipeDetailIngredientModel.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

