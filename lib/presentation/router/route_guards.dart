import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

import '../../infrastructure/auth/firebase_user_mapper.dart';
import '../../infrastructure/core/firestore_helpers.dart';
import '../../injection.dart';
import 'router.gr.dart';

class CheckIfAuthenticated extends AutoRouteGuard {
  @override
  Future<void> onNavigation(
      NavigationResolver resolver, StackRouter router) async {
    final u = getIt<FirebaseAuth>().currentUser;
    if (u == null) {
      await router.push(const LoginRoute());
      return;
    }
    await u.reload();
    final user =
        await u.toDomain(await getIt<FirebaseFirestore>().userDocument());
    debugPrint(user.toString());
    debugPrint(user.verified.toString());

    if (user.verified == false) {
      await router
          .pushAll([const LoginRoute(), VerificationRoute(email: user.email)]);
    } else if (user.filled == true) {
      resolver.next();
    } else {
      await router.push(const FillDataRoute());
    }
  }
}
