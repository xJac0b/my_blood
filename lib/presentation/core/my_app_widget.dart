import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../router/router.dart';
import 'constants/theme.dart';

class MyAppWidget extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _appRouter.config(),
      title: 'My Blood',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: themeData,
    );
  }
}
