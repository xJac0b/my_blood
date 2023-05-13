import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:fpdart/fpdart.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/auth_failure.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../domain/auth/user/i_user_repository.dart';
import '../../domain/auth/value_objects.dart';
import '../core/firestore_helpers.dart';
import 'firebase_user_mapper.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn, this._firestore,
      this._userReposiory);

  final firebase_auth.FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FirebaseFirestore _firestore;
  final IUserRepository _userReposiory;

  @override
  Option<firebase_auth.User> getSignedInUser() {
    return optionOf(_firebaseAuth.currentUser);
  }

  @override
  void reloadUser() {
    _firebaseAuth.currentUser!.reload();
  }

  @override
  Future<void> signOut() => Future.wait([
        _googleSignIn.signOut(),
        _firebaseAuth.signOut(),
      ]);

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailAddressString = emailAddress.getOrCrash();
    final passwordString = password.getOrCrash();

    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddressString,
        password: passwordString,
      );
      await _userReposiory.create(getSignedInUser()
          .fold(() => throw Exception(), (user) => user.toDomain()));
      return right(unit);
    } on firebase_auth.FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use' ||
          e.code == 'email-already-in-use'.toUpperCase()) {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailAddressString = emailAddress.getOrCrash();
    final passwordString = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressString,
        password: passwordString,
      );
      return right(unit);
    } on firebase_auth.FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password' ||
          e.code == 'wrong-password'.toUpperCase() ||
          e.code == 'user-not-found' ||
          e.code == 'user-not-found'.toUpperCase()) {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuth = await googleUser.authentication;

      final authCredential = firebase_auth.GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
        accessToken: googleAuth.accessToken,
      );

      return _firebaseAuth
          .signInWithCredential(authCredential)
          .then((r) => right(unit));
    } on firebase_auth.FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> sendPasswordResetEmail({
    required EmailAddress emailAddress,
  }) async {
    try {
      final emailAddressString = emailAddress.getOrCrash();
      await _firebaseAuth.sendPasswordResetEmail(email: emailAddressString);
      return right(unit);
    } on firebase_auth.FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return left(const AuthFailure.userNotFound());
      } else {
        return left(const AuthFailure.invalidEmail());
      }
    }
  }

  @override
  Future<void> sendVerificationEmail() async {
    final user = _firebaseAuth.currentUser;
    await user?.sendEmailVerification();
  }

  @override
  Future<bool> isEmailVerified() async {
    final user = _firebaseAuth.currentUser;
    await user!.reload();
    return user.emailVerified;
  }

  @override
  Future<void> setUserData(
      {required DisplayName displayName,
      required DateOfBirth dateOfBirth,
      required bool male,
      required Weight weight}) async {
    final _displayName = displayName.getOrCrash();
    final _dateOfBirth = dateOfBirth.getOrCrash();
    final _weight = weight.getOrCrash();
    await _firebaseAuth.currentUser?.updateDisplayName(_displayName);
    final doc = await _firestore.userDocument();
    await doc.set({
      'filled': true,
      'dateOfBirth': _dateOfBirth,
      'male': male,
      'weight': _weight
    });
  }
}
