import 'dart:io';
import 'dart:typed_data';

import 'package:cookbook/api/lib/openapi.dart';
import 'package:cookbook/pages/nav/ingredient_detail_args.dart';
import 'package:cookbook/styles/text_styles.dart';
import 'package:cookbook/texts/localization_provider.dart';
import 'package:cookbook/texts/generic/texts.dart';
import 'package:cookbook/themes/colors.dart';
import 'package:cookbook/web_client.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:one_of/one_of.dart';
import 'package:provider/provider.dart';

class IngredientEditPage extends StatefulWidget {
  const IngredientEditPage({super.key});

  @override
  State<IngredientEditPage> createState() => _IngredientEditPageState();
}

class _IngredientEditPageState extends State<IngredientEditPage> {
  late IngredientDetailArgs args;

  late Future<IngredientDetailModel?> ingredientFuture;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController descriptionController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  bool firstInit = false;

  Uint8List? croppedData;

  @override
  void didChangeDependencies() {
    if (!firstInit) {
      args = ModalRoute.of(context)!.settings.arguments as IngredientDetailArgs;
      var ingredientListModel = (args.ingredient.oneOf.value as IngredientListModel);
      nameController.text = ingredientListModel.name ?? "";

      if (ingredientListModel.id != null) {
        ingredientFuture = COOKBOOK.getIngredientsApi().getIngredientById(id: ingredientListModel.id!).then((value) => value.data!);
        ingredientFuture.then((value) => descriptionController.text = value!.description!);
      } else {
        ingredientFuture = Future.value(IngredientDetailModel((b) => b
          ..name = ""
          ..description = ""
          ..imageUrl = null
          ..id = null));
      }
      firstInit = true;
    }

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    CBTexts l = context.watch<LocalizationProvider>().l;
    return WillPopScope(
      onWillPop: () async {
        var fs = FocusScope.of(context);
        if (MediaQuery.of(context).viewInsets.bottom > 0) {
          fs.unfocus();
          return false;
        }
        return true;
      },
      child: Scaffold(
        backgroundColor: CBColors.BackgroundColor,
        appBar: AppBar(
          title: Text(l.ingredient.singular),
          backgroundColor: CBColors.NavigationBarBackgroundColor,
        ),
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                      child: TextFormField(
                        controller: nameController,
                        style: CBTS.regular.primaryLabel,
                        decoration: InputDecoration(
                          labelText: l.ingredient.ingredientEdit_name,
                          labelStyle: CBTS.regular.primaryLabel,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: CBColors.FormEntryBorderColor,
                            ),
                          ),
                          border: const OutlineInputBorder(),
                        ),
                        validator: (value) => value!.isEmpty ? l.ingredient.ingredientEdit_nameEmptyValidation : null,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          color: CBColors.ListItemBackgroundColor,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 2,
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            if ((args.ingredient.oneOf.value as IngredientListModel).imageUrl != null && (args.ingredient.oneOf.value as IngredientListModel).imageUrl!.startsWith("http"))
                              Image.network(
                                (args.ingredient.oneOf.value as IngredientListModel).imageUrl!,
                              ),
                            if ((args.ingredient.oneOf.value as IngredientListModel).imageUrl != null && !(args.ingredient.oneOf.value as IngredientListModel).imageUrl!.startsWith("http"))
                              Image.file(
                                File((args.ingredient.oneOf.value as IngredientListModel).imageUrl!),
                              ),
                            if ((args.ingredient.oneOf.value as IngredientListModel).imageUrl == null)
                              Image.asset(
                                "assets/img/ingredient_placeholder.jpg",
                              ),
                            Positioned(
                              bottom: 16,
                              child: ElevatedButton(
                                onPressed: () async {
                                  ImagePicker imagePicker = ImagePicker();
                                  XFile? file = await imagePicker.pickImage(source: ImageSource.camera);
                                  if (file == null) return;
                                  CroppedFile? croppedFile = await ImageCropper().cropImage(
                                    sourcePath: file.path,
                                    aspectRatioPresets: [
                                      CropAspectRatioPreset.square,
                                    ],
                                    uiSettings: [
                                      AndroidUiSettings(
                                        toolbarTitle: '',
                                        toolbarColor: CBColors.PrimaryColor,
                                        toolbarWidgetColor: CBColors.PrimaryButtonTextColor,
                                        initAspectRatio: CropAspectRatioPreset.original,
                                      ),
                                      IOSUiSettings(
                                        title: '',
                                      ),
                                    ],
                                  );
                                  if (croppedFile != null) {
                                    croppedData = await croppedFile.readAsBytes();
                                    setState(() {
                                      args.ingredient.rebuild((p0) => p0.oneOf = OneOf.fromValue1(
                                          value: IngredientListModel((b) => b
                                            ..id = (args.ingredient.oneOf.value as IngredientListModel).id
                                            ..name = (args.ingredient.oneOf.value as IngredientListModel).name
                                            ..imageUrl = croppedFile.path)));
                                    });
                                  }
                                },
                                child: Text(
                                  l.ingredient.ingredientEdit_uploadImageButtonText,
                                  style: CBTS.regular.btn,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                        child: FutureBuilder(
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              var ingredient = snapshot.data as IngredientDetailModel;
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  TextFormField(
                                    controller: descriptionController,
                                    maxLines: null,
                                    scrollPadding: const EdgeInsets.only(bottom: 86.0),
                                    textInputAction: TextInputAction.newline,
                                    style: CBTS.regular.primaryLabel,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: CBColors.FormEntryBorderColor,
                                        ),
                                      ),
                                      labelText: l.ingredient.ingredientEdit_description,
                                      labelStyle: CBTS.regular.primaryLabel,
                                      fillColor: CBColors.ListItemBackgroundColor,
                                      border: const OutlineInputBorder(),
                                    ),
                                    validator: (value) => value!.isEmpty ? l.ingredient.ingredientEdit_descriptionEmptyValidation : null,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0, bottom: 16.0),
                                    child: SizedBox(
                                      height: 48,
                                      width: double.maxFinite,
                                      child: ElevatedButton(
                                        onPressed: () => saveIngredient(ingredient, l),
                                        child: Text(
                                          l.ingredient.ingredientEdit_saveButtonText,
                                          style: CBTS.regular.btn,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Center(
                                child: CircularProgressIndicator(
                                  color: CBColors.PrimaryColor,
                                ),
                              );
                            }
                          },
                          future: ingredientFuture,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future saveIngredient(IngredientDetailModel ingredient, CBTexts l) async {
    //   FocusScope.of(context).unfocus();

    //   ingredient.rebuild(
    //     (b) => b
    //       ..description = descriptionController.text
    //       ..name = nameController.text,
    //   );

    //   if (!formKey.currentState!.validate()) return;

    //   Fluttertoast.showToast(msg: l.ingredientEdit_savingToast);

    //   if (args.ingredient.imageUrl != null && !args.ingredient.imageUrl!.startsWith("http")) {
    //     // Local file
    //     var imageId = Uuid().v4().toString();
    //     String? uri = await ImagesApi().createImage(ImageModel(
    //       id: imageId,
    //       data: base64.encode(croppedData!),
    //     ));

    //     if (uri != null) {
    //       uri = uri.replaceAll("\"", "");
    //       ingredient.imageUrl = uri;
    //     }
    //   }
    //   if (ingredient.id == null) {
    //     ingredient.id = Uuid().v4().toString();
    //     await IngredientsApi().createIngredient(ingredient);
    //   } else if (ingredient.id != null) {
    //     await IngredientsApi().updateIngredient(ingredient);
    //   }
    //   await Fluttertoast.cancel();
    //   args.ingredient.imageUrl = ingredient.imageUrl;
    //   Navigator.of(context).pop(NavModel.withRefresh);
  }
}
