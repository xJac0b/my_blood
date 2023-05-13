import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

import '../../domain/auth/user/user.dart';
import '../../domain/auth/value_objects.dart';
import '../../domain/core/value_objects.dart';

extension FirebaseUserDomainX on firebase_auth.User {
  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(uid),
      verified: emailVerified,
      email: EmailAddress(email!),
      displayName: DisplayName(displayName ?? ''),
      dateOfBirth: DateOfBirth(DateTime(0)),
      filled: false,
      male: true,
      weight: Weight(0),
    );
  }
}
