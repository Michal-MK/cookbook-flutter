import 'package:cookbook/api/lib/openapi.dart';
import 'package:cookbook/const/nav_constants.dart';
import 'package:cookbook/controls/cb_shimmer.dart';
import 'package:cookbook/controls/sliver_persistent_header_delegate_impl.dart';
import 'package:cookbook/fa_icons.dart';
import 'package:cookbook/pages/nav/recipe_detail_args.dart';
import 'package:cookbook/styles/text_styles.dart';
import 'package:cookbook/texts/localization_provider.dart';
import 'package:cookbook/themes/colors.dart';
import 'package:cookbook/themes/theme_provider.dart';
import 'package:cookbook/viewmodel/recipes_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RecipesTab extends StatefulWidget {
  const RecipesTab({super.key});

  @override
  State<RecipesTab> createState() => _RecipesTabState();
}

class _RecipesTabState extends State<RecipesTab> {
  @override
  Widget build(BuildContext context) {
    return Consumer3<LocalizationProvider, ThemeProvider, RecipesTabVM>(
      builder: (_, l, theme, vm, __) {
        return RefreshIndicator.adaptive(
          onRefresh: vm.refresh,
          child: CustomScrollView(
            slivers: [
              SliverPersistentHeader(
                floating: true,
                pinned: false,
                delegate: SliverPersistentHeaderDelegateImpl(
                  minHeight: 48,
                  maxHeight: 48,
                  child: Container(
                    decoration: BoxDecoration(
                      color: CBColors.BackgroundColor,
                      boxShadow: [
                        BoxShadow(
                          color: CBColors.Gray5Color,
                          offset: const Offset(0, 1),
                          blurRadius: 1,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0, top: 8.0, bottom: 8.0),
                      child: Text(l.l.home_recipesTab, style: CBTS.bold.primary.s(24)),
                    ),
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                sliver: SliverList.builder(
                  itemCount: vm.recipes.length + ((vm.remoteRecipes == null) ? 4 : 0),
                  itemBuilder: (ctx, idx) {
                    if (idx >= vm.recipes.length) {
                      return const Padding(
                        padding: EdgeInsets.only(bottom: 16.0),
                        child: CBShimmer(
                          height: 200,
                          width: double.maxFinite,
                          radius: 8,
                        ),
                      );
                    }

                    var recipe = vm.recipes[idx];

                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: InkWell(
                        onTap: () async {
                          NavModel? model = await Navigator.of(context).push(NavConstants.recipeDetailRoute(args: RecipeDetailArgs(recipe)));
                          if (model != null && model.refresh) {
                            await vm.refresh();
                          }
                        },
                        child: Material(
                          elevation: 1,
                          borderRadius: BorderRadius.circular(8),
                          child: Container(
                            height: 200,
                            decoration: BoxDecoration(
                              color: CBColors.ListItemBackgroundColor,
                              borderRadius: BorderRadius.circular(8),
                              image: recipe.instance.imageUrl != null
                                  ? DecorationImage(
                                      image: NetworkImage(recipe.instance.imageUrl!),
                                      fit: BoxFit.cover,
                                    )
                                  : const DecorationImage(
                                      image: AssetImage("assets/img/recipe_placeholder.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                                    child: Container(
                                      height: 24,
                                      decoration: BoxDecoration(
                                        color: getFoodColor(recipe.instance.foodType).withOpacity(0.75),
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const SizedBox(width: 16),
                                          Text(getIcon(recipe.instance.foodType), style: CBTS.fa.btn.s(16)),
                                          const SizedBox(width: 4),
                                          Text(l.l.foodTypeToString(recipe.instance.foodType), style: CBTS.regular.btn.s(16)),
                                          const SizedBox(width: 16),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const Spacer(flex: 1),
                                InkWell(
                                  onTap: () async {
                                    _ = await showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          backgroundColor: CBColors.BackgroundColor,
                                          title: Text(l.l.recipe_persistenceIconMeaningTitle, style: CBTS.regular.primary.s(16)),
                                          content: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              ListTile(
                                                leading: Container(
                                                  height: 24,
                                                  width: 24,
                                                  decoration: BoxDecoration(
                                                    color: getFoodColor(recipe.instance.foodType!).withOpacity(0.75),
                                                    borderRadius: BorderRadius.circular(4),
                                                  ),
                                                  child: Icon(Icons.cloud, color: CBColors.PrimaryButtonTextColor, size: 14),
                                                ),
                                                title: Text(l.l.recipe_persistenceIconMeaningRemote, style: CBTS.regular.primaryLabel.s(16)),
                                              ),
                                              ListTile(
                                                leading: Container(
                                                  height: 24,
                                                  width: 24,
                                                  decoration: BoxDecoration(
                                                    color: getFoodColor(recipe.instance.foodType!).withOpacity(0.75),
                                                    borderRadius: BorderRadius.circular(4),
                                                  ),
                                                  child: Icon(Icons.storage, color: CBColors.PrimaryButtonTextColor, size: 14),
                                                ),
                                                title: Text(l.l.recipe_persistenceIconMeaningLocal, style: CBTS.regular.primaryLabel.s(16)),
                                              ),
                                            ],
                                          ),
                                          actions: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Text("OK", style: CBTS.regular.primaryLabel.s(16)),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  child: SizedBox(
                                    width: 40,
                                    height: 40,
                                    child: Center(
                                      child: Container(
                                        height: 24,
                                        width: 24,
                                        decoration: BoxDecoration(
                                          color: getFoodColor(recipe.instance.foodType).withOpacity(0.75),
                                          borderRadius: BorderRadius.circular(4),
                                        ),
                                        child: Icon(recipe.localInstance != null ? Icons.storage : Icons.cloud, color: CBColors.PrimaryButtonTextColor, size: 14),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  String getIcon(FoodType? foodType) {
    switch (foodType) {
      case FoodType.number1: // Main dish
        return FontAwesomeIcons.ConciergeBell;
      case FoodType.number2: // Soup
        return FontAwesomeIcons.UtensilSpoon;
      case FoodType.number3: // Dessert
        return FontAwesomeIcons.IceCream;
      case _:
        return FontAwesomeIcons.Question;
    }
  }
}

Color getFoodColor(FoodType? foodType) {
  switch (foodType) {
    case FoodType.number1: // Main dish
      return CBColors.MainDishFoodTypeColor;
    case FoodType.number2: // Soup
      return CBColors.SoupFoodTypeColor;
    case FoodType.number3: // Dessert
      return CBColors.DessertFoodTypeColor;
    case _:
      return CBColors.UnknownFoodTypeColor;
  }
}
