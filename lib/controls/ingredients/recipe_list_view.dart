import 'package:cookbook/const/nav_constants.dart';
import 'package:cookbook/converters/food_type_converters.dart';
import 'package:cookbook/pages/nav/recipe_detail_args.dart';
import 'package:cookbook/styles/text_styles.dart';
import 'package:cookbook/texts/localization_provider.dart';
import 'package:cookbook/themes/colors.dart';
import 'package:cookbook/viewmodel/interfaces/refreshable.dart';
import 'package:cookbook/viewmodel/model/cb_recipe_list_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RecipeListViewItem extends StatelessWidget {
  const RecipeListViewItem({
    required this.recipe,
    required this.refreshable,
    super.key,
  });

  final CBRecipeListModel recipe;
  final IRefreshable refreshable;

  @override
  Widget build(BuildContext context) {
    return Consumer<LocalizationProvider>(
      builder: (context, l, _) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: InkWell(
            onTap: () async {
              NavModel? model = await Navigator.of(context).push(NavConstants.recipeDetailRoute(args: RecipeDetailArgs(recipe)));
              if (model != null && model.refresh) {
                await refreshable.refresh();
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
                            color: recipe.instance.foodType!.getFoodColor().withOpacity(0.75),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(width: 16),
                              Text(recipe.instance.foodType!.getIcon(), style: CBTS.fa.btn.s(16)),
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
                                        color: recipe.instance.foodType!.getFoodColor().withOpacity(0.75),
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
                                        color: recipe.instance.foodType!.getFoodColor().withOpacity(0.75),
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
                              color: recipe.instance.foodType!.getFoodColor().withOpacity(0.75),
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
    );
  }
}
