import 'package:cookbook/controls/cb_shimmer.dart';
import 'package:cookbook/controls/ingredients/ingredient_list_view.dart';
import 'package:cookbook/controls/sliver_persistent_header_delegate_impl.dart';
import 'package:cookbook/styles/text_styles.dart';
import 'package:cookbook/texts/localization_provider.dart';
import 'package:cookbook/themes/colors.dart';
import 'package:cookbook/themes/theme_provider.dart';
import 'package:cookbook/viewmodel/ingredients_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IngredientsTab extends StatefulWidget {
  const IngredientsTab({super.key});

  @override
  State<IngredientsTab> createState() => _IngredientsTabState();
}

class _IngredientsTabState extends State<IngredientsTab> {
  @override
  Widget build(BuildContext context) {
    return Consumer3<LocalizationProvider, ThemeProvider, IngredientsTabVM>(
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
                      child: Text(l.l.home_ingredientsTab, style: CBTS.bold.primary.s(24)),
                    ),
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.only(top: 16),
                sliver: SliverList.builder(
                  itemCount: vm.ingredients?.length ?? 8,
                  itemBuilder: (ctx, idx) {
                    var ingredient = vm.ingredients?[idx];
                    if (ingredient == null) {
                      return const Padding(
                        padding: EdgeInsets.only(bottom: 16.0, left: 16.0, right: 16.0),
                        child: CBShimmer(
                          height: 64,
                          width: double.maxFinite,
                          radius: 8,
                        ),
                      );
                    }
                    return IngredientListViewItem(ingredient: ingredient, refreshable: vm);
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