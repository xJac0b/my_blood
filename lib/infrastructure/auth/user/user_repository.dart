import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/user/i_user_repository.dart';
import '../../../domain/auth/user/user.dart';
import '../../../domain/auth/user/user_failure.dart';
import '../../core/firestore_helpers.dart';
import 'user_dtos.dart';

@LazySingleton(as: IUserRepository)
class EntryRepository implements IUserRepository {
  EntryRepository(this._firestore);

  final FirebaseFirestore _firestore;

  @override
  Future<Either<UserFailure, User>> get(firebase_auth.User fUser) async {
    try {
      final userDoc = await _firestore.userDocument();
      final doc = await userDoc.get();
      return right(UserDto.fromFirestore(doc).toDomain(fUser));
    } on Exception catch (e) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const UserFailure.insufficientPermission());
      } else {
        debugPrint(e.toString());
        return left(const UserFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<UserFailure, Unit>> create(User user) async {
    try {
      final userDoc = await _firestore.userDocument();
      final userDto = UserDto.fromDomainInit(user);

      await userDoc.set(userDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const UserFailure.insufficientPermission());
      } else {
        return left(const UserFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<UserFailure, Unit>> update(User user) async {
    try {
      final userDoc = await _firestore.userDocument();
      final userDto = UserDto.fromDomain(user);

      await userDoc.update(userDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const UserFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const UserFailure.unableToUpdate());
      } else {
        return left(const UserFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<UserFailure, Unit>> delete(User user) async {
    try {
      final userDoc = await _firestore.userDocument();
      await userDoc.delete();
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const UserFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const UserFailure.unableToUpdate());
      } else {
        return left(const UserFailure.unexpected());
      }
    }
  }
}
