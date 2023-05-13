import 'package:auto_route/auto_route.dart';

import '../../domain/auth/i_auth_facade.dart';
import '../../domain/auth/user/i_user_repository.dart';
import '../../injection.dart';
import 'router.gr.dart';

class CheckIfAuthenticated extends AutoRouteGuard {
  @override
  Future<void> onNavigation(
      NavigationResolver resolver, StackRouter router) async {
    final u = getIt<IAuthFacade>().getSignedInUser();
    await u.fold(() => router.push(const LoginRoute()), (t) async {
      await t.reload();
      final failureOrSuccess = await getIt<IUserRepository>().get(t);
      await failureOrSuccess.fold((f) => router.push(const LoginRoute()),
          (user) {
        if (user.verified == false) {
          router.pushAll([
            const LoginRoute(),
            VerificationRoute(email: user.email.getOrCrash())
          ]);
        } else if (user.filled == true) {
          resolver.next();
        } else {
          router.push(const FillDataRoute());
        }
      });
    });
  }
}
