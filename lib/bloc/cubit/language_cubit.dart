import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_l10n/utils/preferences/language.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageCubit extends Cubit<Locale> {
  LanguagePreferences pref = LanguagePreferences();
  LanguageCubit() : super(Locale('en'));

  initialLanguage() async {
    String localeName = await pref.getLocale();
    final deviceLocale = Platform.localeName;
    Locale locale;
    if (localeName == 'null') {
      if (AppLocalizations.supportedLocales.contains(deviceLocale)) {
        locale = Locale(deviceLocale);
      } else {
        locale = Locale('az');
      }
    } else {
      locale = Locale(localeName);
    }
    emit(locale);
  }

  changeLanguage(String value) async {
    String localeName = await pref.getLocale();

    if (localeName == value) return;
    await pref.setLocale(value);
    emit(Locale(value));
  }
}
