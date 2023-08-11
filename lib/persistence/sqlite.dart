import 'package:cookbook/api/lib/openapi.dart';
import 'package:cookbook/viewmodel/model/recipe_detail_model_ext.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class SQLite {
  static SQLite? _instance;

  static SQLite get instance {
    _instance ??= SQLite._();
    return _instance!;
  }

  Database? _database;
  Database get database => _database!;

  SQLite._();

  Future<String> get path async => join((await getApplicationDocumentsDirectory()).path, 'cookbook.db');

  Future init() async {
    databaseFactory = databaseFactoryFfi;

    await wipe();

    _database = await openDatabase(
      await path,
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE recipes(id TEXT PRIMARY KEY, name TEXT, description TEXT, foodType INTEGER, duration TEXT, image TEXT); '
          'CREATE TABLE recipe_ingredients(recipe_id TEXT, ingredient_id TEXT, amount REAL, unit INTEGER, name TEXT, image TEXT, '
          'FOREIGN KEY(recipe_id) REFERENCES recipes(id), FOREIGN KEY(ingredient_id) REFERENCES ingredients(id));',
        );
      },
      version: 1,
    );
  }

  Future wipe() async {
    await _database?.close();
    await deleteDatabase(await path);
  }

  Future<List<RecipeDetailModel>> getRecipes() async {
    return await _database!.transaction((txn) async {
      var res = await txn.query('recipes');
      var ingredientAmounts = await txn.query('recipe_ingredients');
      var ret = res.map((m) {
        var recipe = RecipeDetailModelExt.fromMap(m);
        recipe.rebuild(
          (b) => b
            ..ingredientAmounts.addAll(
              ingredientAmounts.where((ia) => ia['recipe_id'] == recipe.id).map(
                    (ia) => RecipeDetailIngredientModelExt.fromMap(ia),
                  ),
            ),
        );
        return recipe;
      }).toList();
      return ret;
    });
  }

  Future deleteRecipe(String recipeId) async {
    await _database!.transaction((txn) async {
      await txn.delete('recipes', where: 'id = ?', whereArgs: [recipeId]);
      await txn.delete('recipe_ingredients', where: 'recipe_id = ?', whereArgs: [recipeId]);
    });
  }
}
