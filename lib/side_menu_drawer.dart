import 'package:cookbook/const/nav_constants.dart';
import 'package:cookbook/fonts.dart';
import 'package:cookbook/texts/localization_provider.dart';
import 'package:cookbook/texts/texts.dart';
import 'package:cookbook/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SideMenuDrawer extends StatelessWidget {

  final VoidCallback stateChange;

  const SideMenuDrawer({super.key, required this.stateChange});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    CBTexts l = context.watch<LocalizationProvider>().l;
    return SafeArea(
      child: Container(
        width: mediaQuery.size.width * 0.75,
        color: CBColors.NavigationBarBackgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset("assets/img/logo_text.png", width: mediaQuery.size.width * 0.50),
              ),
            ),
            ListTile(
              leading: Icon(
                const IconData(0xf013, fontFamily: Fonts.FontAwesome),
                color: CBColors.PrimaryColor,
              ),
              title: Text(
                l.settings_title,
                style: TextStyle(color: CBColors.PrimaryColor),
              ),
              onTap: () async {
                Navigator.of(context).pop();
                await Navigator.of(context).push(NavConstants.settingsRoute());
                stateChange();
              }
            ),
          ],
        ),
      ),
    );
  }
}
