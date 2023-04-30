import 'package:auto_route/auto_route.dart';

import 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/', page: HomeRoute.page),
        AutoRoute(path: '/results', page: ResultListRoute.page),
        AutoRoute(path: '/add', page: NewEntryRoute.page),
      ];
}
