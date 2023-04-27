import 'package:flutter/material.dart';
import 'router/router.dart';

class MyAppWidget extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _appRouter.config(),
      title: '',
      theme: ThemeData(useMaterial3: true),
    );
  }
}
