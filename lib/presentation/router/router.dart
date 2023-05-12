import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'route_guards.dart';
import 'router.gr.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            path: '/', guards: [CheckIfAuthenticated()], page: HomeRoute.page),
        AutoRoute(path: '/register', page: RegisterRoute.page),
        AutoRoute(path: '/login', page: LoginRoute.page),
        AutoRoute(path: '/results', page: EntryListRoute.page),
        AutoRoute(path: '/add', page: EntryFormRoute.page),
        AutoRoute(path: '/progress', page: ProgressRoute.page),
        AutoRoute(path: '/verify', page: VerificationRoute.page),
        AutoRoute(path: '/reset', page: ResetPasswordRoute.page),
        AutoRoute(path: '/fill', page: FillDataRoute.page),
        RedirectRoute(path: '*', redirectTo: '/'),
      ];
}
