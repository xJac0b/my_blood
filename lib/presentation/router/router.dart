import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import 'router.gr.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/', page: LoginRoute.page),
        AutoRoute(path: '/register', page: RegisterRoute.page),
        AutoRoute(path: '/home', page: HomeRoute.page),
        AutoRoute(path: '/results', page: ResultListRoute.page),
        AutoRoute(path: '/add', page: NewEntryRoute.page),
        AutoRoute(path: '/progress', page: ProgressRoute.page),
        AutoRoute(path: '/verify', page: VerificationRoute.page),
        AutoRoute(path: '/reset', page: ResetPasswordRoute.page),
        AutoRoute(path: '/fill', page: FillDataRoute.page),
        RedirectRoute(path: '*', redirectTo: '/'),
      ];
}
