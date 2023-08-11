import 'package:cookbook/api/lib/openapi.dart';
import 'package:cookbook/const/nav_constants.dart';
import 'package:cookbook/const/fa_icons.dart';
import 'package:cookbook/const/fonts.dart';
import 'package:cookbook/const/style.dart';
import 'package:cookbook/pages/main_tabs/ingredients_tab.dart';
import 'package:cookbook/pages/main_tabs/recipes_tab.dart';
import 'package:cookbook/pages/nav/ingredient_detail_args.dart';
import 'package:cookbook/pages/home/side_menu_drawer.dart';
import 'package:cookbook/styles/text_styles.dart';
import 'package:cookbook/texts/localization_provider.dart';
import 'package:cookbook/texts/generic/texts.dart';
import 'package:cookbook/themes/colors.dart';
import 'package:cookbook/viewmodel/ingredients_vm.dart';
import 'package:cookbook/viewmodel/recipes_vm.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:one_of/one_of.dart';
import 'package:provider/provider.dart';

class CookbookHomePage extends StatefulWidget {
  const CookbookHomePage({super.key, required this.title});

  final String title;

  @override
  State<CookbookHomePage> createState() => _CookbookHomePageState();
}

class _CookbookHomePageState extends State<CookbookHomePage> with SingleTickerProviderStateMixin {
  late TabController tabController = TabController(length: 2, vsync: this);

  var recipesTabVM = RecipesTabVM();
  var ingredientsTabVM = IngredientsTabVM();

  @override
  void initState() {
    recipesTabVM.init();
    ingredientsTabVM.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    CBTexts l = context.watch<LocalizationProvider>().l;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CBColors.NavigationBarBackgroundColor,
        title: Text(widget.title, style: CBTS.regular.nav),
      ),
      backgroundColor: CBColors.BackgroundColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: SideMenuDrawer(
        stateChange: () => setState(() {}),
      ),
      body: TabBarView(
        controller: tabController,
        physics: const FastScrollPhysics(),
        children: [
          ChangeNotifierProvider.value(value: recipesTabVM, child: const RecipesTab()),
          ChangeNotifierProvider.value(value: ingredientsTabVM, child: const IngredientsTab()),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          NavModel? model;
          if (tabController.index == 0) {
            Fluttertoast.showToast(msg: l.global.NIY);
            // model = Navigator.of(context).push(NavConstants.recipeEditRoute());
          } else {
            model = await Navigator.of(context).push(NavConstants.ingredientEditRoute(IngredientDetailArgs(RecipeDetailIngredientModelAllOfIngredient((u) {
              u.oneOf = OneOf.fromValue1(value: IngredientListModel());
            }))));
          }
          if (model != null && model.refresh) {
            recipesTabVM.refresh();
            ingredientsTabVM.refresh();
          }
        },
        backgroundColor: CBColors.PrimaryColor,
        child: Text(FontAwesomeIcons.Plus, style: CBTS.fa.primaryLabel.s(24)),
      ),
      bottomNavigationBar: Container(
        height: 56,
        decoration: BoxDecoration(
          color: CBColors.NavigationBarBackgroundColor,
          boxShadow: const [
            BoxShadow(
              color: Colors.black38,
              offset: Offset(0, -1),
              blurRadius: 1,
            ),
          ],
        ),
        child: TabBar(
          indicatorSize: TabBarIndicatorSize.label,
          indicator: UnderlineTabIndicator(
            borderRadius: TRADIUS4,
            borderSide: BorderSide(width: 2, color: CBColors.PrimaryColor),
          ),
          controller: tabController,
          labelColor: CBColors.PrimaryColor,
          unselectedLabelColor: CBColors.UnselectedColor,
          labelStyle: CBTS.regular,
          tabs: [
            Tab(
              text: l.home.tab_recipes,
              icon: const Icon(
                IconData(0xf02d, fontFamily: Fonts.FontAwesome),
                size: 24,
              ),
              iconMargin: const EdgeInsets.only(bottom: 0),
            ),
            Tab(
              text: l.home.tab_ingredients,
              icon: const Icon(
                IconData(0xf4d8, fontFamily: Fonts.FontAwesome),
                size: 24,
              ),
              iconMargin: const EdgeInsets.only(bottom: 0),
            ),
          ],
        ),
      ),
    );
  }
}