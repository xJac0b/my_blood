import 'package:fpdart/fpdart.dart';

import 'auth_failure.dart';
import 'user.dart';
import 'value_objects.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();

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
}
