import 'package:cookbook/api/lib/openapi.dart';
import 'package:cookbook/const/nav_constants.dart';
import 'package:cookbook/fa_icons.dart';
import 'package:cookbook/fonts.dart';
import 'package:cookbook/pages/main_tabs/ingredients_tab.dart';
import 'package:cookbook/pages/main_tabs/recipes_tab.dart';
import 'package:cookbook/pages/nav/ingredient_detail_args.dart';
import 'package:cookbook/side_menu_drawer.dart';
import 'package:cookbook/styles/text_styles.dart';
import 'package:cookbook/texts/localization_provider.dart';
import 'package:cookbook/texts/texts.dart';
import 'package:cookbook/themes/colors.dart';
import 'package:cookbook/viewmodel/ingredients_vm.dart';
import 'package:cookbook/viewmodel/recipes_vm.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
        children: [
          ChangeNotifierProvider.value(value: recipesTabVM, child: const RecipesTab()),
          ChangeNotifierProvider.value(value: ingredientsTabVM, child: const IngredientsTab()),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          NavModel? model;
          if(tabController.index == 0) {
            Fluttertoast.showToast(msg: l.generic_notImplemented);
            // model = Navigator.of(context).push(NavConstants.recipeEditRoute());
          } else {
            model = await Navigator.of(context).push(NavConstants.ingredientEditRoute(IngredientDetailArgs(RecipeDetailIngredientModelAllOfIngredient())));
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
        height: 72,
        decoration: BoxDecoration(
          color: CBColors.NavigationBarBackgroundColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              offset: const Offset(0, -1),
              blurRadius: 1,
            ),
          ],
        ),
        child: TabBar(
          indicatorSize: TabBarIndicatorSize.label,
          indicator: UnderlineTabIndicator(
                                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(4), topRight: Radius.circular(4)),
                                  borderSide: BorderSide(width: 4, color: CBColors.PrimaryColor),
                                ),
          controller: tabController,
          labelColor: CBColors.PrimaryColor,
          unselectedLabelColor: CBColors.UnselectedColor,
          tabs: [
            Tab(
              text: l.home_recipesTab,
              icon: const Icon(
                IconData(0xf02d, fontFamily: Fonts.FontAwesome),
              ),
            ),
            Tab(
              text: l.home_ingredientsTab,
              icon: const Icon(
                IconData(0xf4d8, fontFamily: Fonts.FontAwesome),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
