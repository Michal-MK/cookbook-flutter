import 'package:cookbook/const/nav_constants.dart';
import 'package:cookbook/fa_icons.dart';
import 'package:cookbook/pages/nav/ingredient_detail_args.dart';
import 'package:cookbook/pages/nav/recipe_detail_args.dart';
import 'package:cookbook/styles/text_styles.dart';
import 'package:cookbook/texts/localization_provider.dart';
import 'package:cookbook/themes/colors.dart';
import 'package:cookbook/viewmodel/recipe_detail_page_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RecipeDetailPage extends StatefulWidget {
  const RecipeDetailPage({super.key});

  @override
  State<RecipeDetailPage> createState() => _RecipeDetailPageState();
}

class _RecipeDetailPageState extends State<RecipeDetailPage> {
  late RecipeDetailArgs args;

  @override
  void didChangeDependencies() {
    args = ModalRoute.of(context)!.settings.arguments as RecipeDetailArgs;
    context.read<RecipeDetailPageVM>().init(args.recipe.instance.id!, localInstance: args.recipe.localInstance);

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer2<LocalizationProvider, RecipeDetailPageVM>(
      builder: (_, l, vm, __) {
        return WillPopScope(
          onWillPop: () async {
            Navigator.of(context).pop(NavModel(refresh: vm.refreshOnPop));
            return false;
          },
          child: Scaffold(
            backgroundColor: CBColors.BackgroundColor,
            appBar: AppBar(
              title: Text(l.l.elem_recipe, style: CBTS.regular.nav),
              backgroundColor: CBColors.NavigationBarBackgroundColor,
              actions: [
                IconButton(
                  onPressed: () async {
                    if (vm.isLocal) {
                      await showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text(l.l.recipeDetail_deleteLocalRecipe, style: CBTS.regular.primary.s(16)),
                            backgroundColor: CBColors.BackgroundColor,
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  vm.saveRecipe();
                                },
                                child: Text("OK", style: CBTS.regular.s(16).copyWith(color: CBColors.ErrorColor)),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text(l.l.generic_cancel, style: CBTS.regular.primaryLabel.s(16)),
                              ),
                            ],
                          );
                        },
                      );
                    } else {
                      vm.saveRecipe();
                    }
                  },
                  icon: Icon(vm.isLocal ? Icons.storage : Icons.download),
                ),
                IconButton(
                  onPressed: vm.shareRecipe,
                  icon: const Icon(Icons.share),
                ),
                IconButton(
                  onPressed: vm.deleteRecipe,
                  icon: const Icon(Icons.delete),
                ),
                // TODO Too much work for now
                // IconButton(
                //   onPressed: vm.editRecipe,
                //   icon: const Icon(Icons.edit),
                // ),
              ],
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: args.recipe.instance.imageUrl != null
                              ? DecorationImage(
                                  image: NetworkImage(args.recipe.instance.imageUrl!),
                                  fit: BoxFit.cover,
                                )
                              : const DecorationImage(
                                  image: AssetImage("assets/img/recipe_placeholder.jpg"),
                                  fit: BoxFit.cover,
                                )),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      args.recipe.instance.name!,
                      textAlign: TextAlign.left,
                      style: CBTS.bold.primary.s(24),
                    ),
                    const SizedBox(height: 24),
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: CBColors.PrimaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    FontAwesomeIcons.ConciergeBell,
                                    style: CBTS.fa.btn.s(16),
                                  ),
                                  Text(
                                    l.l.foodTypeToString(args.recipe.instance.foodType!),
                                    textAlign: TextAlign.center,
                                    style: CBTS.regular.btn.s(14),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    FontAwesomeIcons.Clock,
                                    style: CBTS.fa.btn.s(16),
                                  ),
                                  if (vm.recipe != null)
                                    Text(
                                      l.l.smartFormat(l.l.recipeDetail_duration, [vm.recipe!.duration!]),
                                      style: CBTS.regular.btn.s(14),
                                    )
                                  else
                                    Text(
                                      l.l.smartFormat(l.l.recipeDetail_duration, ['-']),
                                      textAlign: TextAlign.center,
                                      style: CBTS.regular.btn.s(14),
                                    )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    FontAwesomeIcons.Seedling,
                                    style: CBTS.fa.btn.s(16),
                                  ),
                                  if (vm.recipe != null)
                                    Text(
                                      l.l.smartFormat(l.l.recipeDetail_ingredientCount, [vm.recipe!.ingredientAmounts!.length]),
                                      textAlign: TextAlign.center,
                                      style: CBTS.regular.btn.s(14),
                                    )
                                  else
                                    Text(
                                      "0",
                                      style: CBTS.bold.btn.s(16),
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      l.l.home_ingredientsTab,
                      style: CBTS.bold.primary.s(24),
                    ),
                    const SizedBox(height: 24),
                    if (vm.recipe == null)
                      const Center(
                        child: CircularProgressIndicator(),
                      )
                    else if (vm.recipe!.ingredientAmounts!.isNotEmpty)
                      ListView.builder(
                        itemBuilder: (ctx, idx) {
                          var ingredientAmount = vm.recipe!.ingredientAmounts![idx];
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 16.0),
                            child: InkWell(
                              onTap: () async {
                                await Navigator.of(context).push(
                                  NavConstants.ingredientDetailRoute(args: IngredientDetailArgs(ingredientAmount.ingredient!, allowEdit: false)),
                                );
                              },
                              child: Material(
                                elevation: 1,
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  height: 64,
                                  decoration: BoxDecoration(
                                    color: CBColors.ListItemBackgroundColor,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Row(
                                    children: [
                                      if (ingredientAmount.ingredient!.imageUrl != null)
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(8),
                                          child: Image.network(ingredientAmount.ingredient!.imageUrl!, width: 64, height: 64),
                                        )
                                      else
                                        Container(
                                          width: 64,
                                          height: 64,
                                          decoration: BoxDecoration(
                                            color: CBColors.PrimaryColor,
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          child: Center(
                                            child: Text(
                                              ingredientAmount.ingredient!.name![0],
                                              style: CBTS.bold.btn.s(24),
                                            ),
                                          ),
                                        ),
                                      const SizedBox(width: 16),
                                      Text(
                                        ingredientAmount.ingredient!.name!,
                                        style: CBTS.bold.primaryLabel.s(16),
                                      ),
                                      const Spacer(),
                                      Text(
                                        "${ingredientAmount.amount} ${l.l.unitToString(ingredientAmount.unit!)}",
                                        style: CBTS.regular.primaryLabel.s(14),
                                      ),
                                      const SizedBox(width: 16),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        itemCount: vm.recipe!.ingredientAmounts!.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                      )
                      else
                        Center(
                          child: Text(
                            l.l.recipeDetail_noIngredients,
                            style: CBTS.regular.primaryLabel.s(16),
                          ),
                        ),
                    const SizedBox(height: 24),
                    Text(
                      l.l.recipeDetail_steps,
                      style: CBTS.bold.primary.s(24),
                    ),
                    const SizedBox(height: 24),
                    if (vm.recipe == null)
                      const Center(
                        child: CircularProgressIndicator(),
                      )
                    else
                      Text(
                        vm.recipe!.description!,
                        style: CBTS.regular.primaryLabel.s(16),
                      ),
                    const SizedBox(height: 24)
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
