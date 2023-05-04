import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'presentation/core/my_app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en', 'US'), Locale('pl', 'PL')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en', 'US'),
      child: MyAppWidget(),
    ),
  );
}
