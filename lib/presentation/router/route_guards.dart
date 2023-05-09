import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

import '../../infrastructure/auth/firebase_user_mapper.dart';
import '../../injection.dart';
import 'router.gr.dart';

class CheckIfAuthenticated extends AutoRouteGuard {
  @override
  Future<void> onNavigation(
      NavigationResolver resolver, StackRouter router) async {
    final u = getIt<FirebaseAuth>().currentUser;
    await u?.reload();
    final user = u?.toDomain();
    debugPrint(user.toString());
    debugPrint(user?.verified.toString());
    if (user == null) {
      await router.push(const LoginRoute());
    } else if (user.verified == false) {
      await router.pushAll([const LoginRoute(), const VerificationRoute()]);
    } else {
      resolver.next();
    }
  }
}
