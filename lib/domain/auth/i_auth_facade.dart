import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:fpdart/fpdart.dart';

import 'auth_failure.dart';
import 'value_objects.dart';

abstract class IAuthFacade {
  Option<firebase_auth.User> getSignedInUser();
  void reloadUser();
  Future<void> signOut();

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<Either<AuthFailure, Unit>> sendPasswordResetEmail({
    required EmailAddress emailAddress,
  });

  Future<void> sendVerificationEmail();

  Future<bool> isEmailVerified();

  Future<void> setUserData(
      {required DisplayName displayName,
      required DateOfBirth dateOfBirth,
      required bool male,
      required Weight weight});
}
