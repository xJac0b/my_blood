import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../infrastructure/auth/firebase_user_mapper.dart';
import '../../injection.dart';
import 'router.gr.dart';

class CheckIfAuthenticated extends AutoRouteGuard {
  @override
  Future<void> onNavigation(
      NavigationResolver resolver, StackRouter router) async {
    final userOption = optionOf(getIt<FirebaseAuth>().currentUser?.toDomain())
      ..fold(
        () => resolver.next(),
        (_) => router.push(const HomeRoute()),
      );
  }
}

@singleton
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            path: '/', guards: [CheckIfAuthenticated()], page: LoginRoute.page),
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
