import 'package:cookbook/api/lib/openapi.dart';
import 'package:cookbook/const/nav_constants.dart';
import 'package:cookbook/const/style.dart';
import 'package:cookbook/pages/nav/ingredient_detail_args.dart';
import 'package:cookbook/styles/text_styles.dart';
import 'package:cookbook/texts/localization_provider.dart';
import 'package:cookbook/themes/colors.dart';
import 'package:cookbook/viewmodel/ingredient_detail_page_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IngredientDetailPage extends StatefulWidget {
  const IngredientDetailPage({super.key});

  @override
  State<IngredientDetailPage> createState() => _IngredientDetailPageState();
}

class _IngredientDetailPageState extends State<IngredientDetailPage> {
  late IngredientDetailArgs args;

  @override
  void didChangeDependencies() {
    args = ModalRoute.of(context)!.settings.arguments as IngredientDetailArgs;
    context.read<IngredientDetailPageVM>().init((args.ingredient.oneOf.value as IngredientListModel).id!);

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer2<LocalizationProvider, IngredientDetailPageVM>(
      builder: (_, l, vm, __) {
        return WillPopScope(
          onWillPop: () async {
            Navigator.of(context).pop(NavModel(refresh: vm.refreshOnPop));
            return false;
          },
          child: Scaffold(
            backgroundColor: CBColors.BackgroundColor,
            appBar: AppBar(
              title: Text(l.l.ingredient.singular, style: CBTS.regular.nav),
              backgroundColor: CBColors.NavigationBarBackgroundColor,
              actions: [
                IconButton(
                  onPressed: vm.shareIngredient,
                  icon: const Icon(Icons.share),
                ),
                if (args.allowEdit)
                  IconButton(
                    onPressed: vm.deleteIngredient,
                    icon: const Icon(Icons.delete),
                  ),
                if (args.allowEdit)
                  IconButton(
                    onPressed: () async {
                      NavModel? res = await Navigator.of(context).push(NavConstants.ingredientEditRoute(args));
                      if (res != null && res.refresh) {
                        vm.refreshOnPop = true;
                        await vm.init((args.ingredient.oneOf.value as IngredientListModel).id!);
                      }
                    },
                    icon: const Icon(Icons.edit),
                  ),
              ],
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Text(
                      vm.ingredient?.name ?? (args.ingredient.oneOf.value as IngredientListModel).name!,
                      style: CBTS.bold.primary.s(24),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: CBColors.ListItemBackgroundColor,
                      borderRadius: RADIUS8,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 2,
                          offset: const Offset(0, 1),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: RADIUS8,
                      child: (args.ingredient.oneOf.value as IngredientListModel).imageUrl != null
                          ? Image.network(
                              (args.ingredient.oneOf.value as IngredientListModel).imageUrl!,
                              fit: BoxFit.cover,
                            )
                          : Image.asset(
                              "assets/img/ingredient_placeholder.jpg",
                              fit: BoxFit.cover,
                            ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                  child: Center(
                    child: vm.ingredient == null
                        ? CircularProgressIndicator(
                            color: CBColors.PrimaryColor,
                          )
                        : Text(vm.ingredient!.description!, style: CBTS.regular.primaryLabel.s(16)),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
