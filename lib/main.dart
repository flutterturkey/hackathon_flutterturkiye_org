import 'package:easy_localization/easy_localization.dart';
import 'package:festival_flutterturkiye_org/core/utils/get_it_initializer.dart';
import 'package:festival_flutterturkiye_org/core/utils/theme_helper.dart';
import 'package:festival_flutterturkiye_org/core/translate/translate_utils.dart';
import 'package:festival_flutterturkiye_org/pages/home_page.dart';
import 'package:flutter/material.dart';
// ignore: always_use_package_imports
import 'configure_nonweb.dart' if (dart.library.html) 'configure_web.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  configureApp();
  initializeGetIt();
  runApp(
    EasyLocalization(
      supportedLocales: TranslateUtils.instance.supportedLocales,
      path: TranslateUtils.instance.translateFilesPath,
      fallbackLocale: TranslateUtils.instance.turkishLocale,
      child: const FlutterFestivalApp(),
    ),
  );
}

class FlutterFestivalApp extends StatelessWidget {
  const FlutterFestivalApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Festivali',
        theme: ThemeHelper.themeData,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        home: const HomePage(),
        debugShowCheckedModeBanner: false,
      );
}
