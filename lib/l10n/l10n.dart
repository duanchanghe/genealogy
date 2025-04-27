import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class L10n {
  static const supportedLocales = [
    Locale('en'),
    Locale('zh'),
  ];

  static const fallbackLocale = Locale('en');

  static AppLocalizations of(BuildContext context) {
    return AppLocalizations.of(context)!;
  }

  static String getLanguageName(String languageCode) {
    switch (languageCode) {
      case 'en':
        return 'English';
      case 'zh':
        return '中文';
      default:
        return languageCode;
    }
  }

  static String getLanguageCode(String languageName) {
    switch (languageName) {
      case 'English':
        return 'en';
      case '中文':
        return 'zh';
      default:
        return fallbackLocale.languageCode;
    }
  }
}
