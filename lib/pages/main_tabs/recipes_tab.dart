import 'package:cookbook/controls/cb_shimmer.dart';
import 'package:cookbook/controls/ingredients/recipe_list_view.dart';
import 'package:cookbook/controls/sliver_persistent_header_delegate_impl.dart';
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
                      color: CBColors.NavigationBarBackgroundColor,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(0, 1),
                          blurRadius: 1,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0, top: 8.0, bottom: 8.0),
                      child: Text(l.l.home.tab_recipes, style: CBTS.bold.primary.s(24)),
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

                    return RecipeListViewItem(recipe: vm.recipes[idx], refreshable: vm);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
