import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../injection.dart';
import '../router/router.dart';

class MyAppWidget extends StatelessWidget {
  final _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _appRouter.config(),
      title: 'My Blood',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
    );
  }
}
