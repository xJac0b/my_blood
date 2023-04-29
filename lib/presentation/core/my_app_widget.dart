import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../../utils/extensions.dart';
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
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('pl'),
      ],
      theme: themeData,
    );
  }
}
