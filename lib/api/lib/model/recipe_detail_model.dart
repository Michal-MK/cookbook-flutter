//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RecipeDetailModel {
  /// Returns a new [RecipeDetailModel] instance.
  RecipeDetailModel({
    this.id,
    this.name,
    this.description,
    this.duration,
    this.foodType,
    this.ingredientAmounts = const [],
    this.imageUrl,
  });

  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? duration;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FoodType? foodType;

  List<RecipeDetailIngredientModel>? ingredientAmounts;

  String? imageUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RecipeDetailModel &&
     other.id == id &&
     other.name == name &&
     other.description == description &&
     other.duration == duration &&
     other.foodType == foodType &&
     other.ingredientAmounts == ingredientAmounts &&
     other.imageUrl == imageUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (duration == null ? 0 : duration!.hashCode) +
    (foodType == null ? 0 : foodType!.hashCode) +
    (ingredientAmounts == null ? 0 : ingredientAmounts!.hashCode) +
    (imageUrl == null ? 0 : imageUrl!.hashCode);

  @override
  String toString() => 'RecipeDetailModel[id=$id, name=$name, description=$description, duration=$duration, foodType=$foodType, ingredientAmounts=$ingredientAmounts, imageUrl=$imageUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.duration != null) {
      json[r'duration'] = this.duration;
    } else {
      json[r'duration'] = null;
    }
    if (this.foodType != null) {
      json[r'foodType'] = this.foodType;
    } else {
      json[r'foodType'] = null;
    }
    if (this.ingredientAmounts != null) {
      json[r'ingredientAmounts'] = this.ingredientAmounts;
    } else {
      json[r'ingredientAmounts'] = null;
    }
    if (this.imageUrl != null) {
      json[r'imageUrl'] = this.imageUrl;
    } else {
      json[r'imageUrl'] = null;
    }
    return json;
  }

  /// Returns a new [RecipeDetailModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RecipeDetailModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RecipeDetailModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RecipeDetailModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RecipeDetailModel(
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        duration: mapValueOfType<String>(json, r'duration'),
        foodType: FoodType.fromJson(json[r'foodType']),
        ingredientAmounts: RecipeDetailIngredientModel.listFromJson(json[r'ingredientAmounts']) ?? const [],
        imageUrl: mapValueOfType<String>(json, r'imageUrl'),
      );
    }
    return null;
  }

  static List<RecipeDetailModel>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RecipeDetailModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RecipeDetailModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RecipeDetailModel> mapFromJson(dynamic json) {
    final map = <String, RecipeDetailModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RecipeDetailModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RecipeDetailModel-objects as value to a dart map
  static Map<String, List<RecipeDetailModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RecipeDetailModel>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RecipeDetailModel.listFromJson(entry.value, growable: growable,);
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

