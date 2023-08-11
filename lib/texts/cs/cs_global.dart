// ignore_for_file: non_constant_identifier_names

import 'package:cookbook/texts/generic/global.dart';

class CsGlobalTexts implements GlobalTexts {
  @override
  String get state_noInternet => "Není připojení k internetu";

  @override
  String get cancel => "Zrušit";

  @override
  String get NIY => "Funkce není zatím implementována";

  @override
  String get theme_dark => "Tmavý";

  @override
  String get theme_light => "Světlý";
}
