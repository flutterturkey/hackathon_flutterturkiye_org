import 'package:flutter/material.dart';

/// Build command:
/// ```bash
/// flutter pub run easy_localization:generate  -O lib/core/translate -f keys -o locale_keys.g.dart --source-dir assets/translations
/// ```
class TranslateUtils {
  TranslateUtils._init();
  static TranslateUtils _instance;
  static final TranslateUtils instance = _instance ??= TranslateUtils._init();

  final translateFilesPath = 'assets/translations';

  final englishLocale = const Locale('en', 'US');
  final turkishLocale = const Locale('tr', 'TR');

  List<Locale> get supportedLocales => [
        englishLocale,
        turkishLocale,
      ];
}
