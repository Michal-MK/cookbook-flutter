import 'package:cookbook/const/nav_constants.dart';
import 'package:cookbook/const/preferences.dart';
import 'package:cookbook/styles/text_styles.dart';
import 'package:cookbook/texts/localization_provider.dart';
import 'package:cookbook/texts/texts.dart';
import 'package:cookbook/themes/colors.dart';
import 'package:cookbook/themes/theme_provider.dart';
import 'package:countries_flag/countries_flag.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  SharedPreferences? prefs;

  bool get isLightTheme => ThemeProvider.instance.isLightTheme;

  @override
  void initState() {
    initPreferences();
    super.initState();
  }

  Future initPreferences() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    CBTexts l = context.watch<LocalizationProvider>().l;
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context, NavModel.withRefresh);
        return false;
      },
      child: Scaffold(
        backgroundColor: CBColors.BackgroundColor,
        appBar: AppBar(
          backgroundColor: CBColors.NavigationBarBackgroundColor,
          title: Text(
            l.settings_title,
            style: CBTS.regular.nav,
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            ListTile(
              title: Text(
                l.settings_theme,
                style: CBTS.regular.primaryLabel,
              ),
              onTap: () {
                setState(() {
                  ThemeProvider.instance.setTheme(!isLightTheme);
                  prefs!.setBool(PreferenceConstants.IS_LIGHT_THEME, isLightTheme);
                });
              },
              trailing: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CBColors.NavigationBarTextColor,
                  border: Border.all(color: Colors.black),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(l.theme_light, style: CBTS.regular.primary),
                      IgnorePointer(
                        child: Switch(
                          value: !isLightTheme,
                          onChanged: (value) {},
                        ),
                      ),
                      Text(l.theme_dark, style: CBTS.regular.primary),
                    ],
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text(
                l.settings_language,
                style: CBTS.regular.primaryLabel,
              ),
              onTap: () async {
                await showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) {
                    return Container(
                      decoration: BoxDecoration(
                        color: CBColors.ListItemBackgroundColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              title: Text("English", style: CBTS.bold.primaryLabel.s(20)),
                              trailing: CountriesFlag(Flags.unitedKingdom, height: 30, width: 30),
                              onTap: () {
                                prefs!.setString(PreferenceConstants.LOCALE, "en");
                                LocalizationProvider.instance.setLocale("en");
                                Navigator.pop(context);
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Container(
                                height: 1,
                                color: CBColors.FormEntryBorderColor,
                              ),
                            ),
                            ListTile(
                              title: Text("Čeština", style: CBTS.bold.primaryLabel.s(20)),
                              trailing: CountriesFlag(Flags.czechRepublic, height: 30, width: 30),
                              onTap: () {
                                prefs!.setString(PreferenceConstants.LOCALE, "cs");
                                LocalizationProvider.instance.setLocale("cs");
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
                setState(() {});
              },
              trailing: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CBColors.NavigationBarTextColor,
                  border: Border.all(color: Colors.black),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(langText(), style: CBTS.regular.primary),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String langText() {
    if (prefs == null) {
      return "---";
    }
    var value = prefs!.getString(PreferenceConstants.LOCALE) ?? "en";
    return value == "en" ? "English" : "Čeština";
  }
}
