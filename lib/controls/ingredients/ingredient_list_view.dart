import 'package:cookbook/api/lib/openapi.dart';
import 'package:cookbook/const/nav_constants.dart';
import 'package:cookbook/pages/nav/ingredient_detail_args.dart';
import 'package:cookbook/styles/text_styles.dart';
import 'package:cookbook/themes/colors.dart';
import 'package:cookbook/viewmodel/interfaces/refreshable.dart';
import 'package:flutter/material.dart';
import 'package:one_of/one_of.dart';

class IngredientListViewItem extends StatelessWidget {
  const IngredientListViewItem({
    super.key,
    required this.ingredient,
    required this.refreshable,
  });

  final IngredientListModel ingredient;
  final IRefreshable refreshable;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0, left: 16.0, right: 16.0),
      child: Material(
        elevation: 1,
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          decoration: BoxDecoration(
            color: CBColors.ListItemBackgroundColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: InkWell(
            onTap: () async {
              NavModel? model = await Navigator.of(context).push(
                NavConstants.ingredientDetailRoute(
                  args: IngredientDetailArgs(RecipeDetailIngredientModelAllOfIngredient((b) => b
                    ..oneOf = OneOf.fromValue1(
                      value: IngredientListModel((b) => b
                        ..id = ingredient.id
                        ..name = ingredient.name
                        ..imageUrl = ingredient.imageUrl),
                    ))),
                ),
              );
              if (model != null && model.refresh) {
                await refreshable.refresh();
              }
            },
            borderRadius: BorderRadius.circular(8),
            child: Row(
              children: [
                if (ingredient.imageUrl != null)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(ingredient.imageUrl!, width: 64, height: 64),
                  )
                else
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(image: AssetImage("assets/img/ingredient_placeholder.jpg")),
                    ),
                  ),
                const SizedBox(width: 16),
                Text(ingredient.name!, style: CBTS.regular.primaryLabel.s(16)),
                const Spacer(),
                Icon(Icons.edit, color: CBColors.PrimaryColor, size: 32),
                const SizedBox(width: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
